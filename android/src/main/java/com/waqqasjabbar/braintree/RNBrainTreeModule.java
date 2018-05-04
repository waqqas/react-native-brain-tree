
package com.waqqasjabbar.braintree;

import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.Callback;

public class RNBrainTreeModule extends ReactContextBaseJavaModule {

  private final ReactApplicationContext reactContext;

  public RNBrainTreeModule(ReactApplicationContext reactContext) {
    super(reactContext);
    this.reactContext = reactContext;
  }

  @Override
  public String getName() {
    return "RNBrainTree";
  }
}