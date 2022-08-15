.class public interface abstract Lcom/android/server/location/gnss/hal/GnssNative$StatusCallbacks;
.super Ljava/lang/Object;
.source "GnssNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/gnss/hal/GnssNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StatusCallbacks"
.end annotation


# virtual methods
.method public abstract onReportFirstFix(I)V
.end method

.method public abstract onReportStatus(I)V
.end method
