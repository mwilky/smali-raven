.class public interface abstract Lcom/android/server/tare/EconomyManagerInternal;
.super Ljava/lang/Object;
.source "EconomyManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/tare/EconomyManagerInternal$TareStateChangeListener;,
        Lcom/android/server/tare/EconomyManagerInternal$AffordabilityChangeListener;,
        Lcom/android/server/tare/EconomyManagerInternal$ActionBill;,
        Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;
    }
.end annotation


# virtual methods
.method public abstract canPayFor(ILjava/lang/String;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;)Z
.end method

.method public abstract getMaxDurationMs(ILjava/lang/String;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;)J
.end method

.method public abstract isEnabled()Z
.end method

.method public abstract noteInstantaneousEvent(ILjava/lang/String;ILjava/lang/String;)V
.end method

.method public abstract noteOngoingEventStarted(ILjava/lang/String;ILjava/lang/String;)V
.end method

.method public abstract noteOngoingEventStopped(ILjava/lang/String;ILjava/lang/String;)V
.end method

.method public abstract registerAffordabilityChangeListener(ILjava/lang/String;Lcom/android/server/tare/EconomyManagerInternal$AffordabilityChangeListener;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;)V
.end method

.method public abstract registerTareStateChangeListener(Lcom/android/server/tare/EconomyManagerInternal$TareStateChangeListener;)V
.end method

.method public abstract unregisterAffordabilityChangeListener(ILjava/lang/String;Lcom/android/server/tare/EconomyManagerInternal$AffordabilityChangeListener;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;)V
.end method
