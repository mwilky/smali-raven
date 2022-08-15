.class public final Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;
.super Ljava/lang/Object;
.source "SettingsStatsUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/stats/pull/SettingsStatsUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FlagsData"
.end annotation


# instance fields
.field public mDataType:I

.field public mFlagName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;->mFlagName:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;->mDataType:I

    return-void
.end method
