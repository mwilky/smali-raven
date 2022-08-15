.class public Lcom/android/server/tv/TvRemoteServiceInput$2;
.super Ljava/lang/Object;
.source "TvRemoteServiceInput.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/tv/TvRemoteServiceInput;->openGamepadBridge(Landroid/os/IBinder;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/tv/TvRemoteServiceInput;

.field public final synthetic val$token:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Lcom/android/server/tv/TvRemoteServiceInput;Landroid/os/IBinder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/tv/TvRemoteServiceInput$2;->this$0:Lcom/android/server/tv/TvRemoteServiceInput;

    iput-object p2, p0, Lcom/android/server/tv/TvRemoteServiceInput$2;->val$token:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/tv/TvRemoteServiceInput$2;->this$0:Lcom/android/server/tv/TvRemoteServiceInput;

    iget-object p0, p0, Lcom/android/server/tv/TvRemoteServiceInput$2;->val$token:Landroid/os/IBinder;

    invoke-virtual {v0, p0}, Lcom/android/server/tv/TvRemoteServiceInput;->closeInputBridge(Landroid/os/IBinder;)V

    return-void
.end method
