.class public final Lcom/google/android/systemui/elmyra/gates/TransientGate$1;
.super Ljava/lang/Object;
.source "TransientGate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/elmyra/gates/TransientGate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/elmyra/gates/TransientGate;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/elmyra/gates/TransientGate;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/gates/TransientGate$1;->this$0:Lcom/google/android/systemui/elmyra/gates/TransientGate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/gates/TransientGate$1;->this$0:Lcom/google/android/systemui/elmyra/gates/TransientGate;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/systemui/elmyra/gates/TransientGate;->mIsBlocking:Z

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/gates/Gate;->notifyListener()V

    return-void
.end method
