.class public final Lcom/android/server/am/ActiveServices$ActiveForegroundApp;
.super Ljava/lang/Object;
.source "ActiveServices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActiveServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActiveForegroundApp"
.end annotation


# instance fields
.field public mAppOnTop:Z

.field public mEndTime:J

.field public mHideTime:J

.field public mLabel:Ljava/lang/CharSequence;

.field public mNumActive:I

.field public mPackageName:Ljava/lang/String;

.field public mShownWhileScreenOn:Z

.field public mShownWhileTop:Z

.field public mStartTime:J

.field public mStartVisibleTime:J

.field public mUid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
