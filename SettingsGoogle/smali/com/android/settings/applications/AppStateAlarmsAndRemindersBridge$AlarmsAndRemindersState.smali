.class public Lcom/android/settings/applications/AppStateAlarmsAndRemindersBridge$AlarmsAndRemindersState;
.super Ljava/lang/Object;
.source "AppStateAlarmsAndRemindersBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/AppStateAlarmsAndRemindersBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlarmsAndRemindersState"
.end annotation


# instance fields
.field private mPermissionGranted:Z

.field private mPermissionRequested:Z


# direct methods
.method constructor <init>(ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/settings/applications/AppStateAlarmsAndRemindersBridge$AlarmsAndRemindersState;->mPermissionRequested:Z

    iput-boolean p2, p0, Lcom/android/settings/applications/AppStateAlarmsAndRemindersBridge$AlarmsAndRemindersState;->mPermissionGranted:Z

    return-void
.end method


# virtual methods
.method public isAllowed()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/settings/applications/AppStateAlarmsAndRemindersBridge$AlarmsAndRemindersState;->mPermissionGranted:Z

    return p0
.end method

.method public shouldBeVisible()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/settings/applications/AppStateAlarmsAndRemindersBridge$AlarmsAndRemindersState;->mPermissionRequested:Z

    return p0
.end method
