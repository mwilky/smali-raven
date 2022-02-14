.class public abstract Lcom/android/server/wm/ActivityInterceptorCallback;
.super Ljava/lang/Object;
.source "ActivityInterceptorCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;,
        Lcom/android/server/wm/ActivityInterceptorCallback$OrderedId;
    }
.end annotation


# static fields
.field static final FIRST_ORDERED_ID:I

.field static final LAST_ORDERED_ID:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract intercept(Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;)Landroid/content/Intent;
.end method
