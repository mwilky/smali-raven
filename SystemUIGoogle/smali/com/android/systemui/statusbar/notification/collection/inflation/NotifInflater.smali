.class public interface abstract Lcom/android/systemui/statusbar/notification/collection/inflation/NotifInflater;
.super Ljava/lang/Object;
.source "NotifInflater.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/notification/collection/inflation/NotifInflater$InflationCallback;,
        Lcom/android/systemui/statusbar/notification/collection/inflation/NotifInflater$Params;
    }
.end annotation


# virtual methods
.method public abstract abortInflation(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
.end method

.method public abstract inflateViews(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/inflation/NotifInflater$Params;Lcom/android/systemui/statusbar/notification/collection/inflation/NotifInflater$InflationCallback;)V
.end method

.method public abstract rebindViews(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/inflation/NotifInflater$Params;Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator$$ExternalSyntheticLambda0;)V
.end method
