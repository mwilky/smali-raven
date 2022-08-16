.class public final synthetic Lcom/android/systemui/ForegroundServiceController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/systemui/appops/AppOpsController$Callback;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/ForegroundServiceController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/ForegroundServiceController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/ForegroundServiceController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/ForegroundServiceController;

    return-void
.end method


# virtual methods
.method public final onActiveStateChanged(IILjava/lang/String;Z)V
    .locals 7

    iget-object v1, p0, Lcom/android/systemui/ForegroundServiceController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/ForegroundServiceController;

    iget-object p0, v1, Lcom/android/systemui/ForegroundServiceController;->mMainHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/systemui/ForegroundServiceController$$ExternalSyntheticLambda1;

    move-object v0, v6

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/ForegroundServiceController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/ForegroundServiceController;IILjava/lang/String;Z)V

    invoke-virtual {p0, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
