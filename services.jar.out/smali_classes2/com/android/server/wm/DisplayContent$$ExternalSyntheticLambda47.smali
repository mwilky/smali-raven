.class public final synthetic Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda47;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/LongConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/DisplayContent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DisplayContent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda47;->f$0:Lcom/android/server/wm/DisplayContent;

    return-void
.end method


# virtual methods
.method public final accept(J)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda47;->f$0:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/DisplayContent;->lambda$requestChangeTransitionIfNeeded$19$DisplayContent(J)V

    return-void
.end method
