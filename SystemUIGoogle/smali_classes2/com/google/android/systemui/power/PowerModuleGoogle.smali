.class public interface abstract Lcom/google/android/systemui/power/PowerModuleGoogle;
.super Ljava/lang/Object;
.source "PowerModuleGoogle.java"


# direct methods
.method public static provideWarningsUi(Landroid/content/Context;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/internal/logging/UiEventLogger;)Lcom/android/systemui/power/PowerUI$WarningsUI;
    .locals 1

    new-instance v0, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;-><init>(Landroid/content/Context;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/internal/logging/UiEventLogger;)V

    return-object v0
.end method
