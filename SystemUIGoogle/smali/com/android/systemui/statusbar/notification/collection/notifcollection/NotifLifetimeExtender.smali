.class public interface abstract Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifLifetimeExtender;
.super Ljava/lang/Object;
.source "NotifLifetimeExtender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifLifetimeExtender$OnEndLifetimeExtensionCallback;
    }
.end annotation


# virtual methods
.method public abstract cancelLifetimeExtension(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract maybeExtendLifetime(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)Z
.end method

.method public abstract setCallback(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda21;)V
.end method
