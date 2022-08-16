.class public final synthetic Lcom/google/android/systemui/communal/dock/callbacks/TimeoutToUserZeroCallback$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/systemui/util/condition/Monitor$Callback;


# instance fields
.field public final synthetic f$0:Lcom/google/android/systemui/communal/dock/callbacks/TimeoutToUserZeroCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/communal/dock/callbacks/TimeoutToUserZeroCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/communal/dock/callbacks/TimeoutToUserZeroCallback$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/communal/dock/callbacks/TimeoutToUserZeroCallback;

    return-void
.end method


# virtual methods
.method public final onConditionsChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/communal/dock/callbacks/TimeoutToUserZeroCallback$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/communal/dock/callbacks/TimeoutToUserZeroCallback;

    iput-boolean p1, p0, Lcom/google/android/systemui/communal/dock/callbacks/TimeoutToUserZeroCallback;->mPreconditionsMet:Z

    invoke-virtual {p0}, Lcom/google/android/systemui/communal/dock/callbacks/TimeoutToUserZeroCallback;->onStateUpdated()V

    return-void
.end method
