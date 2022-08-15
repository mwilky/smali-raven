.class public Lcom/android/server/wm/FactoryErrorDialog$1;
.super Landroid/os/Handler;
.source "FactoryErrorDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/FactoryErrorDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/FactoryErrorDialog;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/FactoryErrorDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/FactoryErrorDialog$1;->this$0:Lcom/android/server/wm/FactoryErrorDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Rebooting from failed factory test"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
