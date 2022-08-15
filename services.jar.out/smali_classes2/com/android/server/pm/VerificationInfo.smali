.class public final Lcom/android/server/pm/VerificationInfo;
.super Ljava/lang/Object;
.source "VerificationInfo.java"


# instance fields
.field public final mInstallerUid:I

.field public final mOriginatingUid:I

.field public final mOriginatingUri:Landroid/net/Uri;

.field public final mReferrer:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Landroid/net/Uri;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/VerificationInfo;->mOriginatingUri:Landroid/net/Uri;

    iput-object p2, p0, Lcom/android/server/pm/VerificationInfo;->mReferrer:Landroid/net/Uri;

    iput p3, p0, Lcom/android/server/pm/VerificationInfo;->mOriginatingUid:I

    iput p4, p0, Lcom/android/server/pm/VerificationInfo;->mInstallerUid:I

    return-void
.end method
