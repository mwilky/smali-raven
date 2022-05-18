.class Lcom/android/systemui/statusbar/phone/StatusBar$BrightnessControl;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;->adjustBrightness(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

.field final synthetic val$val:F


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;F)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 192
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$BrightnessControl;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iput p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$BrightnessControl;->val$val:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 195
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$BrightnessControl;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$BrightnessControl;->val$val:F

    const-string v2, "screen_auto_brightness_adj"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 197
    return-void
.end method
