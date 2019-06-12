
package com.reactlibrary;

import com.facebook.react.bridge.Promise;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.Callback;

import at.favre.lib.crypto.bcrypt.BCrypt;

public class RNBcryptModule extends ReactContextBaseJavaModule {

    private final ReactApplicationContext reactContext;

    public RNBcryptModule(ReactApplicationContext reactContext) {
        super(reactContext);
        this.reactContext = reactContext;
    }

    @Override
    public String getName() {
        return "RNBcrypt";
    }

    @ReactMethod
    public void verifyPassword(String password, String hash, Promise promise) {
        BCrypt.Result verification = BCrypt.verifyer().verify(password.toCharArray(), hash.toCharArray());
        if (verification.validFormat && verification.verified) {
            promise.resolve(true);
        } else {
            promise.reject(new Throwable(verification.formatErrorMessage));
        }
    }
}