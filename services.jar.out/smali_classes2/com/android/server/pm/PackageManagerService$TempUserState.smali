.class Lcom/android/server/pm/PackageManagerService$TempUserState;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TempUserState"
.end annotation


# instance fields
.field public final enabledState:I

.field public final installed:Z

.field public final lastDisableAppCaller:Ljava/lang/String;


# direct methods
.method private constructor <init>(ILjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/pm/PackageManagerService$TempUserState;->enabledState:I

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$TempUserState;->lastDisableAppCaller:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/android/server/pm/PackageManagerService$TempUserState;->installed:Z

    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/String;ZLcom/android/server/pm/PackageManagerService$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService$TempUserState;-><init>(ILjava/lang/String;Z)V

    return-void
.end method
