.class public interface abstract Lcom/android/systemui/smartspace/SmartspaceTargetFilter;
.super Ljava/lang/Object;
.source "SmartspaceTargetFilter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/smartspace/SmartspaceTargetFilter$Listener;
    }
.end annotation


# virtual methods
.method public abstract addListener(Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController$filterListener$1;)V
.end method

.method public abstract filterSmartspaceTarget(Landroid/app/smartspace/SmartspaceTarget;)Z
.end method
