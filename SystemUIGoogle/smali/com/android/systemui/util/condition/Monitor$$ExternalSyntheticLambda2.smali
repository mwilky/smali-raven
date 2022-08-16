.class public final synthetic Lcom/android/systemui/util/condition/Monitor$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/util/condition/Monitor;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/util/condition/Monitor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/util/condition/Monitor$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/util/condition/Monitor;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/condition/Monitor$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/util/condition/Monitor;

    check-cast p1, Lcom/android/systemui/util/condition/Condition;

    iget-object p0, p0, Lcom/android/systemui/util/condition/Monitor;->mConditionCallback:Lcom/android/systemui/util/condition/Monitor$1;

    invoke-virtual {p1, p0}, Lcom/android/systemui/util/condition/Condition;->removeCallback(Lcom/android/systemui/util/condition/Condition$Callback;)V

    return-void
.end method
