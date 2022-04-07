.class Lcom/android/systemui/statusbar/phone/StatusBar$ToggleNightMode;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ToggleNightMode"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 36
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$ToggleNightMode;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 40
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$ToggleNightMode;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 41
    .local v0, "statusBar":Lcom/android/systemui/statusbar/phone/StatusBar;
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    .line 42
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 43
    .local v2, "ContentResolver":Landroid/content/ContentResolver;
    const-string v3, "ui_night_mode"

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 44
    .local v3, "DarkMode":I
    if-eq v3, v4, :cond_1d

    if-nez v3, :cond_14

    goto :goto_1d

    .line 49
    :cond_14
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$ToggleNightMode;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/StatusBar;->mUiModeManager:Landroid/app/UiModeManager;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/UiModeManager;->setNightModeActivated(Z)Z

    goto :goto_25

    .line 46
    :cond_1d
    :goto_1d
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$ToggleNightMode;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/StatusBar;->mUiModeManager:Landroid/app/UiModeManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/UiModeManager;->setNightModeActivated(Z)Z

    .line 51
    :goto_25
    return-void
.end method
