.class public Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger;
.super Ljava/lang/Object;
.source "GameDashboardUiEventLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;
    }
.end annotation


# instance fields
.field private mEntryPointController:Lcom/google/android/systemui/gamedashboard/EntryPointController;

.field private final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method public constructor <init>(Lcom/android/internal/logging/UiEventLogger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    return-void
.end method


# virtual methods
.method public log(Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger;->mEntryPointController:Lcom/google/android/systemui/gamedashboard/EntryPointController;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/systemui/gamedashboard/EntryPointController;->getGamePackageName()Ljava/lang/String;

    move-result-object p0

    :goto_0
    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V

    return-void
.end method

.method public setEntryPointController(Lcom/google/android/systemui/gamedashboard/EntryPointController;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger;->mEntryPointController:Lcom/google/android/systemui/gamedashboard/EntryPointController;

    return-void
.end method
