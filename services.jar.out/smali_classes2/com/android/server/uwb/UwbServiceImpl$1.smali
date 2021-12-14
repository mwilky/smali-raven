.class Lcom/android/server/uwb/UwbServiceImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "UwbServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/uwb/UwbServiceImpl;->registerAirplaneModeReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/uwb/UwbServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/uwb/UwbServiceImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/uwb/UwbServiceImpl$1;->this$0:Lcom/android/server/uwb/UwbServiceImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/uwb/UwbServiceImpl$1;->this$0:Lcom/android/server/uwb/UwbServiceImpl;

    invoke-static {v0}, Lcom/android/server/uwb/UwbServiceImpl;->access$300(Lcom/android/server/uwb/UwbServiceImpl;)V

    return-void
.end method
