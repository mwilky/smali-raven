.class public final Lcom/android/server/pm/Settings$KernelPackageState;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "KernelPackageState"
.end annotation


# instance fields
.field public appId:I

.field public excludedUserIds:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/pm/Settings$KernelPackageState-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/pm/Settings$KernelPackageState;-><init>()V

    return-void
.end method
