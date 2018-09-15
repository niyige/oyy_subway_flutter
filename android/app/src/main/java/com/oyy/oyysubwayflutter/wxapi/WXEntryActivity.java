package com.oyy.oyysubwayflutter.wxapi;

import android.content.Intent;
import android.os.Bundle;

import com.tencent.mm.opensdk.modelbase.BaseReq;
import com.tencent.mm.opensdk.modelbase.BaseResp;
import com.tencent.mm.opensdk.modelmsg.SendAuth;
import com.tencent.mm.opensdk.openapi.IWXAPI;
import com.tencent.mm.opensdk.openapi.IWXAPIEventHandler;
import com.tencent.mm.opensdk.openapi.WXAPIFactory;

import io.flutter.app.FlutterActivity;

public class WXEntryActivity extends FlutterActivity implements IWXAPIEventHandler {

    private IWXAPI api;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        api = WXAPIFactory.createWXAPI(this, "wx7e2d791ff79cdbd9", false);
        onNewIntent(getIntent());
        finish();
    }

    @Override
    public void onReq(BaseReq baseReq) {

    }

    @Override
    public void onResp(BaseResp baseResp) {
        sendBroadcastToWechat(baseResp);
    }

    private void sendBroadcastToWechat(BaseResp baseResp) {
        Intent intent = new Intent();
        intent.setAction("sendResp");
        if (baseResp instanceof SendAuth.Resp) {
            SendAuth.Resp resp = (SendAuth.Resp) (baseResp);
            intent.putExtra("code", resp.errCode == 0 ? resp.code : "-1");
            intent.putExtra("type", "SendAuthResp");
            sendBroadcast(intent);
        } else {
            intent.setAction("sendResp");
            intent.putExtra("code", baseResp.errCode + "");
            intent.putExtra("type", "ShareResp");
            sendBroadcast(intent);
        }
    }

    protected void onNewIntent(Intent intent) {
        api.handleIntent(intent, this);
    }
}
