.class public final Lcom/google/android/systemui/columbus/ColumbusContentObserver$userSwitchCallback$1;
.super Landroid/app/SynchronousUserSwitchObserver;
.source "ColumbusContentObserver.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/columbus/ColumbusContentObserver;-><init>(Lcom/google/android/systemui/columbus/ContentResolverWrapper;Landroid/net/Uri;Lkotlin/jvm/functions/Function1;Landroid/app/IActivityManager;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/columbus/ColumbusContentObserver;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/columbus/ColumbusContentObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusContentObserver$userSwitchCallback$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusContentObserver;

    invoke-direct {p0}, Landroid/app/SynchronousUserSwitchObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserSwitching(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusContentObserver$userSwitchCallback$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusContentObserver;

    invoke-static {p1}, Lcom/google/android/systemui/columbus/ColumbusContentObserver;->access$updateContentObserver(Lcom/google/android/systemui/columbus/ColumbusContentObserver;)V

    iget-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusContentObserver$userSwitchCallback$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusContentObserver;

    invoke-static {p1}, Lcom/google/android/systemui/columbus/ColumbusContentObserver;->access$getCallback$p(Lcom/google/android/systemui/columbus/ColumbusContentObserver;)Lkotlin/jvm/functions/Function1;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusContentObserver$userSwitchCallback$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusContentObserver;

    invoke-static {p0}, Lcom/google/android/systemui/columbus/ColumbusContentObserver;->access$getSettingsUri$p(Lcom/google/android/systemui/columbus/ColumbusContentObserver;)Landroid/net/Uri;

    move-result-object p0

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
