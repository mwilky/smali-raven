.class public final Lcom/google/android/systemui/smartspace/NewCardInfo;
.super Ljava/lang/Object;
.source "NewCardInfo.java"


# instance fields
.field public final mCard:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

.field public final mIntent:Landroid/content/Intent;

.field public final mIsPrimary:Z

.field public final mPackageInfo:Landroid/content/pm/PackageInfo;

.field public final mPublishTime:J


# direct methods
.method public constructor <init>(Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;Landroid/content/Intent;ZJLandroid/content/pm/PackageInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/NewCardInfo;->mCard:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    iput-boolean p3, p0, Lcom/google/android/systemui/smartspace/NewCardInfo;->mIsPrimary:Z

    iput-object p2, p0, Lcom/google/android/systemui/smartspace/NewCardInfo;->mIntent:Landroid/content/Intent;

    iput-wide p4, p0, Lcom/google/android/systemui/smartspace/NewCardInfo;->mPublishTime:J

    iput-object p6, p0, Lcom/google/android/systemui/smartspace/NewCardInfo;->mPackageInfo:Landroid/content/pm/PackageInfo;

    return-void
.end method
