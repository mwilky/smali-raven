.class public interface abstract Lcom/android/systemui/statusbar/notification/collection/render/NotificationVisibilityProvider;
.super Ljava/lang/Object;
.source "NotificationVisibilityProvider.kt"


# virtual methods
.method public abstract getLocation(Ljava/lang/String;)Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;
.end method

.method public abstract obtain(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)Lcom/android/internal/statusbar/NotificationVisibility;
.end method

.method public abstract obtain(Ljava/lang/String;)Lcom/android/internal/statusbar/NotificationVisibility;
.end method
