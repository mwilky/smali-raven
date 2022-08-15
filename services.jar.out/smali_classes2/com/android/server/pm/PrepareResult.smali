.class public final Lcom/android/server/pm/PrepareResult;
.super Ljava/lang/Object;
.source "PrepareResult.java"


# instance fields
.field public final mClearCodeCache:Z

.field public final mDisabledPs:Lcom/android/server/pm/PackageSetting;

.field public final mExistingPackage:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

.field public final mOriginalPs:Lcom/android/server/pm/PackageSetting;

.field public final mPackageToScan:Lcom/android/server/pm/parsing/pkg/ParsedPackage;

.field public final mParseFlags:I

.field public final mReplace:Z

.field public final mScanFlags:I

.field public final mSystem:Z


# direct methods
.method public constructor <init>(ZIILcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/ParsedPackage;ZZLcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/server/pm/PrepareResult;->mReplace:Z

    iput p2, p0, Lcom/android/server/pm/PrepareResult;->mScanFlags:I

    iput p3, p0, Lcom/android/server/pm/PrepareResult;->mParseFlags:I

    iput-object p4, p0, Lcom/android/server/pm/PrepareResult;->mExistingPackage:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    iput-object p5, p0, Lcom/android/server/pm/PrepareResult;->mPackageToScan:Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    iput-boolean p6, p0, Lcom/android/server/pm/PrepareResult;->mClearCodeCache:Z

    iput-boolean p7, p0, Lcom/android/server/pm/PrepareResult;->mSystem:Z

    iput-object p8, p0, Lcom/android/server/pm/PrepareResult;->mOriginalPs:Lcom/android/server/pm/PackageSetting;

    iput-object p9, p0, Lcom/android/server/pm/PrepareResult;->mDisabledPs:Lcom/android/server/pm/PackageSetting;

    return-void
.end method
