.class public Lcom/android/server/hdmi/HdmiCecConfig$1;
.super Ljava/lang/Object;
.source "HdmiCecConfig.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/HdmiCecConfig;->notifySettingChanged(Lcom/android/server/hdmi/HdmiCecConfig$Setting;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/hdmi/HdmiCecConfig;

.field public final synthetic val$listener:Lcom/android/server/hdmi/HdmiCecConfig$SettingChangeListener;

.field public final synthetic val$setting:Lcom/android/server/hdmi/HdmiCecConfig$Setting;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecConfig;Lcom/android/server/hdmi/HdmiCecConfig$SettingChangeListener;Lcom/android/server/hdmi/HdmiCecConfig$Setting;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecConfig$1;->this$0:Lcom/android/server/hdmi/HdmiCecConfig;

    iput-object p2, p0, Lcom/android/server/hdmi/HdmiCecConfig$1;->val$listener:Lcom/android/server/hdmi/HdmiCecConfig$SettingChangeListener;

    iput-object p3, p0, Lcom/android/server/hdmi/HdmiCecConfig$1;->val$setting:Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecConfig$1;->val$listener:Lcom/android/server/hdmi/HdmiCecConfig$SettingChangeListener;

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecConfig$1;->val$setting:Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/android/server/hdmi/HdmiCecConfig$SettingChangeListener;->onChange(Ljava/lang/String;)V

    return-void
.end method
