.class Lcom/android/server/hdmi/HdmiCecConfig$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "HdmiCecConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/HdmiCecConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/HdmiCecConfig;


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiCecConfig;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecConfig$SettingsObserver;->this$0:Lcom/android/server/hdmi/HdmiCecConfig;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2

    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecConfig$SettingsObserver;->this$0:Lcom/android/server/hdmi/HdmiCecConfig;

    invoke-static {v1, v0}, Lcom/android/server/hdmi/HdmiCecConfig;->access$000(Lcom/android/server/hdmi/HdmiCecConfig;Ljava/lang/String;)V

    return-void
.end method
