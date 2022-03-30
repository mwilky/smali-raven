.class Lcom/android/systemui/statusbar/phone/StatusBar$BrightnessSlider;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;->updateBrightnessSliderPosition()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 196
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$BrightnessSlider;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 198
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$BrightnessSlider;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/mwilky/Renovate;->updateQsBrightnessSliderPosition(Landroid/content/Context;)V

    .line 199
    return-void
.end method
