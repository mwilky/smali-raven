.class public Lcom/android/server/notification/SysUiStatsEvent$Builder;
.super Ljava/lang/Object;
.source "SysUiStatsEvent.java"


# instance fields
.field public final mBuilder:Landroid/util/StatsEvent$Builder;


# direct methods
.method public constructor <init>(Landroid/util/StatsEvent$Builder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/SysUiStatsEvent$Builder;->mBuilder:Landroid/util/StatsEvent$Builder;

    return-void
.end method


# virtual methods
.method public addBooleanAnnotation(BZ)Lcom/android/server/notification/SysUiStatsEvent$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/SysUiStatsEvent$Builder;->mBuilder:Landroid/util/StatsEvent$Builder;

    invoke-virtual {v0, p1, p2}, Landroid/util/StatsEvent$Builder;->addBooleanAnnotation(BZ)Landroid/util/StatsEvent$Builder;

    return-object p0
.end method

.method public build()Landroid/util/StatsEvent;
    .locals 0

    iget-object p0, p0, Lcom/android/server/notification/SysUiStatsEvent$Builder;->mBuilder:Landroid/util/StatsEvent$Builder;

    invoke-virtual {p0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object p0

    return-object p0
.end method

.method public setAtomId(I)Lcom/android/server/notification/SysUiStatsEvent$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/SysUiStatsEvent$Builder;->mBuilder:Landroid/util/StatsEvent$Builder;

    invoke-virtual {v0, p1}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    return-object p0
.end method

.method public writeBoolean(Z)Lcom/android/server/notification/SysUiStatsEvent$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/SysUiStatsEvent$Builder;->mBuilder:Landroid/util/StatsEvent$Builder;

    invoke-virtual {v0, p1}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    return-object p0
.end method

.method public writeByteArray([B)Lcom/android/server/notification/SysUiStatsEvent$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/SysUiStatsEvent$Builder;->mBuilder:Landroid/util/StatsEvent$Builder;

    invoke-virtual {v0, p1}, Landroid/util/StatsEvent$Builder;->writeByteArray([B)Landroid/util/StatsEvent$Builder;

    return-object p0
.end method

.method public writeInt(I)Lcom/android/server/notification/SysUiStatsEvent$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/SysUiStatsEvent$Builder;->mBuilder:Landroid/util/StatsEvent$Builder;

    invoke-virtual {v0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    return-object p0
.end method

.method public writeString(Ljava/lang/String;)Lcom/android/server/notification/SysUiStatsEvent$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/SysUiStatsEvent$Builder;->mBuilder:Landroid/util/StatsEvent$Builder;

    invoke-virtual {v0, p1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    return-object p0
.end method
