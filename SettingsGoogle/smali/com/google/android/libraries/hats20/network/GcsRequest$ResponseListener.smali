.class public interface abstract Lcom/google/android/libraries/hats20/network/GcsRequest$ResponseListener;
.super Ljava/lang/Object;
.source "GcsRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/hats20/network/GcsRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ResponseListener"
.end annotation


# virtual methods
.method public abstract onError(Ljava/lang/Exception;)V
.end method

.method public abstract onSuccess(Lcom/google/android/libraries/hats20/network/GcsResponse;)V
.end method
