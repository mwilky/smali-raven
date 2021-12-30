.class final Lcom/android/settings/TetherSettings$EthernetListener;
.super Ljava/lang/Object;
.source "TetherSettings.java"

# interfaces
.implements Landroid/net/EthernetManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/TetherSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EthernetListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/TetherSettings;


# direct methods
.method public static synthetic $r8$lambda$it9d65v96-Sr-Fc3vqWkAM_o2I4(Lcom/android/settings/TetherSettings$EthernetListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/TetherSettings$EthernetListener;->lambda$onAvailabilityChanged$0()V

    return-void
.end method

.method private constructor <init>(Lcom/android/settings/TetherSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/TetherSettings$EthernetListener;->this$0:Lcom/android/settings/TetherSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/TetherSettings;Lcom/android/settings/TetherSettings$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/TetherSettings$EthernetListener;-><init>(Lcom/android/settings/TetherSettings;)V

    return-void
.end method

.method private synthetic lambda$onAvailabilityChanged$0()V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/TetherSettings$EthernetListener;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {p0}, Lcom/android/settings/TetherSettings;->access$300(Lcom/android/settings/TetherSettings;)V

    return-void
.end method


# virtual methods
.method public onAvailabilityChanged(Ljava/lang/String;Z)V
    .locals 0

    iget-object p1, p0, Lcom/android/settings/TetherSettings$EthernetListener;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {p1}, Lcom/android/settings/TetherSettings;->access$1300(Lcom/android/settings/TetherSettings;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/android/settings/TetherSettings$EthernetListener$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/settings/TetherSettings$EthernetListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/TetherSettings$EthernetListener;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
