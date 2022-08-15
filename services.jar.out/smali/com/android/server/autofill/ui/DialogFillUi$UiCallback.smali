.class public interface abstract Lcom/android/server/autofill/ui/DialogFillUi$UiCallback;
.super Ljava/lang/Object;
.source "DialogFillUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/autofill/ui/DialogFillUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UiCallback"
.end annotation


# virtual methods
.method public abstract onCanceled()V
.end method

.method public abstract onDatasetPicked(Landroid/service/autofill/Dataset;)V
.end method

.method public abstract onDismissed()V
.end method

.method public abstract onResponsePicked(Landroid/service/autofill/FillResponse;)V
.end method

.method public abstract startIntentSender(Landroid/content/IntentSender;)V
.end method
