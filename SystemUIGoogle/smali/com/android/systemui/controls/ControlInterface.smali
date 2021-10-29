.class public interface abstract Lcom/android/systemui/controls/ControlInterface;
.super Ljava/lang/Object;
.source "ControlStatus.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/controls/ControlInterface$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract getComponent()Landroid/content/ComponentName;
.end method

.method public abstract getControlId()Ljava/lang/String;
.end method

.method public abstract getCustomIcon()Landroid/graphics/drawable/Icon;
.end method

.method public abstract getDeviceType()I
.end method

.method public abstract getFavorite()Z
.end method

.method public abstract getRemoved()Z
.end method

.method public abstract getSubtitle()Ljava/lang/CharSequence;
.end method

.method public abstract getTitle()Ljava/lang/CharSequence;
.end method
