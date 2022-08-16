.class public final Lcom/google/android/systemui/communal/dock/conditions/TimeoutToUserZeroFeatureCondition;
.super Lcom/android/systemui/util/condition/Condition;
.source "TimeoutToUserZeroFeatureCondition.java"


# instance fields
.field public final mEnabled:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/util/condition/Condition;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/systemui/communal/dock/conditions/TimeoutToUserZeroFeatureCondition;->mEnabled:Z

    return-void
.end method


# virtual methods
.method public final start()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/systemui/communal/dock/conditions/TimeoutToUserZeroFeatureCondition;->mEnabled:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/condition/Condition;->updateCondition(Z)V

    return-void
.end method

.method public final stop()V
    .locals 0

    return-void
.end method
