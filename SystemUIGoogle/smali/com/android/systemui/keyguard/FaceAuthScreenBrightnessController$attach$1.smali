.class public final Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController$attach$1;
.super Landroid/database/ContentObserver;
.source "FaceAuthScreenBrightnessController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;->attach(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController$attach$1;->this$0:Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController$attach$1;->this$0:Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;

    invoke-static {p0}, Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;->access$getSystemSettings$p(Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;)Lcom/android/systemui/util/settings/SystemSettings;

    move-result-object p1

    const-string v0, "screen_brightness_float"

    invoke-interface {p1, v0}, Lcom/android/systemui/util/settings/SettingsProxy;->getFloat(Ljava/lang/String;)F

    move-result p1

    invoke-static {p0, p1}, Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;->access$setUserDefinedBrightness$p(Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;F)V

    return-void
.end method
