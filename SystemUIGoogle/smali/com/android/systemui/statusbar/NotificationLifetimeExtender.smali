.class public interface abstract Lcom/android/systemui/statusbar/NotificationLifetimeExtender;
.super Ljava/lang/Object;
.source "NotificationLifetimeExtender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/NotificationLifetimeExtender$NotificationSafeToRemoveCallback;
    }
.end annotation


# virtual methods
.method public abstract setCallback(Lcom/android/wm/shell/dagger/TvPipModule$$ExternalSyntheticLambda1;)V
.end method

.method public abstract setShouldManageLifetime(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V
.end method

.method public abstract shouldExtendLifetime(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
.end method
