.class public final synthetic Lcom/android/server/attention/AttentionManagerService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/attention/AttentionManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/attention/AttentionManagerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/attention/AttentionManagerService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/attention/AttentionManagerService;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/attention/AttentionManagerService;

    invoke-virtual {v0}, Lcom/android/server/attention/AttentionManagerService;->lambda$cancelAndUnbindLocked$1$AttentionManagerService()V

    return-void
.end method
