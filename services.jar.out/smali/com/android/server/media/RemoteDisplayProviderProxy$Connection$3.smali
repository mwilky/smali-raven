.class public Lcom/android/server/media/RemoteDisplayProviderProxy$Connection$3;
.super Ljava/lang/Object;
.source "RemoteDisplayProviderProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;->postStateChanged(Landroid/media/RemoteDisplayState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;

.field public final synthetic val$state:Landroid/media/RemoteDisplayState;


# direct methods
.method public constructor <init>(Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;Landroid/media/RemoteDisplayState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection$3;->this$1:Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;

    iput-object p2, p0, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection$3;->val$state:Landroid/media/RemoteDisplayState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection$3;->this$1:Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;

    iget-object v1, v0, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;->this$0:Lcom/android/server/media/RemoteDisplayProviderProxy;

    iget-object p0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection$3;->val$state:Landroid/media/RemoteDisplayState;

    invoke-static {v1, v0, p0}, Lcom/android/server/media/RemoteDisplayProviderProxy;->-$$Nest$monDisplayStateChanged(Lcom/android/server/media/RemoteDisplayProviderProxy;Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;Landroid/media/RemoteDisplayState;)V

    return-void
.end method
