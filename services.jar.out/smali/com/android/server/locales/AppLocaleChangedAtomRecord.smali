.class public final Lcom/android/server/locales/AppLocaleChangedAtomRecord;
.super Ljava/lang/Object;
.source "AppLocaleChangedAtomRecord.java"


# instance fields
.field public final mCallingUid:I

.field public mNewLocales:Ljava/lang/String;

.field public mPrevLocales:Ljava/lang/String;

.field public mStatus:I

.field public mTargetUid:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->mTargetUid:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->mNewLocales:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->mPrevLocales:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->mStatus:I

    iput p1, p0, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->mCallingUid:I

    return-void
.end method


# virtual methods
.method public setNewLocales(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->mNewLocales:Ljava/lang/String;

    return-void
.end method

.method public setPrevLocales(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->mPrevLocales:Ljava/lang/String;

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->mStatus:I

    return-void
.end method

.method public setTargetUid(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->mTargetUid:I

    return-void
.end method
