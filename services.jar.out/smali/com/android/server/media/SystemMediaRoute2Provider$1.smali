.class Lcom/android/server/media/SystemMediaRoute2Provider$1;
.super Landroid/media/IAudioRoutesObserver$Stub;
.source "SystemMediaRoute2Provider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/SystemMediaRoute2Provider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/media/SystemMediaRoute2Provider;


# direct methods
.method constructor <init>(Lcom/android/server/media/SystemMediaRoute2Provider;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/media/SystemMediaRoute2Provider$1;->this$0:Lcom/android/server/media/SystemMediaRoute2Provider;

    invoke-direct {p0}, Landroid/media/IAudioRoutesObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchAudioRoutesChanged(Landroid/media/AudioRoutesInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider$1;->this$0:Lcom/android/server/media/SystemMediaRoute2Provider;

    invoke-static {v0}, Lcom/android/server/media/SystemMediaRoute2Provider;->access$000(Lcom/android/server/media/SystemMediaRoute2Provider;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/media/SystemMediaRoute2Provider$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/media/SystemMediaRoute2Provider$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/media/SystemMediaRoute2Provider$1;Landroid/media/AudioRoutesInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public synthetic lambda$dispatchAudioRoutesChanged$0$SystemMediaRoute2Provider$1(Landroid/media/AudioRoutesInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider$1;->this$0:Lcom/android/server/media/SystemMediaRoute2Provider;

    invoke-static {v0, p1}, Lcom/android/server/media/SystemMediaRoute2Provider;->access$100(Lcom/android/server/media/SystemMediaRoute2Provider;Landroid/media/AudioRoutesInfo;)V

    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider$1;->this$0:Lcom/android/server/media/SystemMediaRoute2Provider;

    invoke-virtual {v0}, Lcom/android/server/media/SystemMediaRoute2Provider;->notifyProviderState()V

    return-void
.end method
