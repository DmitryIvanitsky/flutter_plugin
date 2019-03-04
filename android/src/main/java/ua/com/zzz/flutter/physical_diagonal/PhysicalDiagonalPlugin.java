package ua.com.zzz.flutter.physical_diagonal;

import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.MethodChannel.MethodCallHandler;
import io.flutter.plugin.common.MethodChannel.Result;
import io.flutter.plugin.common.PluginRegistry.Registrar;
import android.content.res.Resources;
import android.util.DisplayMetrics;


/** PhysicalDiagonalPlugin */
public class PhysicalDiagonalPlugin implements MethodCallHandler {
  /** Plugin registration. */
  public static void registerWith(Registrar registrar) {
    final MethodChannel channel = new MethodChannel(registrar.messenger(), "physical_diagonal");
    channel.setMethodCallHandler(new PhysicalDiagonalPlugin());
  }

  @Override
  public void onMethodCall(MethodCall call, Result result) {

    DisplayMetrics metrics = Resources.getSystem().getDisplayMetrics();
    float yInches= metrics.heightPixels/metrics.ydpi;
    float xInches= metrics.widthPixels/metrics.xdpi;
    double diagonalInches = Math.sqrt(xInches*xInches + yInches*yInches);

    if (call.method.equals("getPlatformVersion")) {
      result.success(diagonalInches);
    } else {
      result.notImplemented();
    }
  }
}
