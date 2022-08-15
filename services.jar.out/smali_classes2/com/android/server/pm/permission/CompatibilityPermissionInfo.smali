.class public Lcom/android/server/pm/permission/CompatibilityPermissionInfo;
.super Ljava/lang/Object;
.source "CompatibilityPermissionInfo.java"


# static fields
.field public static final COMPAT_PERMS:[Lcom/android/server/pm/permission/CompatibilityPermissionInfo;


# instance fields
.field public final mName:Ljava/lang/String;

.field public final mSdkVersion:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/server/pm/permission/CompatibilityPermissionInfo;

    new-instance v1, Lcom/android/server/pm/permission/CompatibilityPermissionInfo;

    const-string v2, "android.permission.POST_NOTIFICATIONS"

    const/16 v3, 0x21

    invoke-direct {v1, v2, v3}, Lcom/android/server/pm/permission/CompatibilityPermissionInfo;-><init>(Ljava/lang/String;I)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/server/pm/permission/CompatibilityPermissionInfo;

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/android/server/pm/permission/CompatibilityPermissionInfo;-><init>(Ljava/lang/String;I)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/server/pm/permission/CompatibilityPermissionInfo;

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-direct {v1, v2, v3}, Lcom/android/server/pm/permission/CompatibilityPermissionInfo;-><init>(Ljava/lang/String;I)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/server/pm/permission/CompatibilityPermissionInfo;->COMPAT_PERMS:[Lcom/android/server/pm/permission/CompatibilityPermissionInfo;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/permission/CompatibilityPermissionInfo;->mName:Ljava/lang/String;

    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput p2, p0, Lcom/android/server/pm/permission/CompatibilityPermissionInfo;->mSdkVersion:I

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/permission/CompatibilityPermissionInfo;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getSdkVersion()I
    .locals 0

    iget p0, p0, Lcom/android/server/pm/permission/CompatibilityPermissionInfo;->mSdkVersion:I

    return p0
.end method
