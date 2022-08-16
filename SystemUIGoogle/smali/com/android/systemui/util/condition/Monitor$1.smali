.class public final Lcom/android/systemui/util/condition/Monitor$1;
.super Ljava/lang/Object;
.source "Monitor.java"

# interfaces
.implements Lcom/android/systemui/util/condition/Condition$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/util/condition/Monitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/util/condition/Monitor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/condition/Monitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/util/condition/Monitor$1;->this$0:Lcom/android/systemui/util/condition/Monitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConditionChanged()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/util/condition/Monitor$1;->this$0:Lcom/android/systemui/util/condition/Monitor;

    iget-object v0, v0, Lcom/android/systemui/util/condition/Monitor;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda6;

    const/4 v2, 0x6

    invoke-direct {v1, v2, p0}, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda6;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
