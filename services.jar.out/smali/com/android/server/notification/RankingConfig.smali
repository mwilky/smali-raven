.class public interface abstract Lcom/android/server/notification/RankingConfig;
.super Ljava/lang/Object;
.source "RankingConfig.java"


# virtual methods
.method public abstract badgingEnabled(Landroid/os/UserHandle;)Z
.end method

.method public abstract bubblesEnabled(Landroid/os/UserHandle;)Z
.end method

.method public abstract canShowBadge(Ljava/lang/String;I)Z
.end method

.method public abstract canShowNotificationsOnLockscreen(I)Z
.end method

.method public abstract canShowPrivateNotificationsOnLockScreen(I)Z
.end method

.method public abstract getBubblePreference(Ljava/lang/String;I)I
.end method

.method public abstract getConversationNotificationChannel(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZ)Landroid/app/NotificationChannel;
.end method

.method public abstract isMediaNotificationFilteringEnabled()Z
.end method
