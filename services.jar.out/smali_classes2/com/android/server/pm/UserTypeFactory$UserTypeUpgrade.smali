.class public Lcom/android/server/pm/UserTypeFactory$UserTypeUpgrade;
.super Ljava/lang/Object;
.source "UserTypeFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/UserTypeFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserTypeUpgrade"
.end annotation


# instance fields
.field private final mFromType:Ljava/lang/String;

.field private final mToType:Ljava/lang/String;

.field private final mUpToVersion:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/UserTypeFactory$UserTypeUpgrade;->mFromType:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/pm/UserTypeFactory$UserTypeUpgrade;->mToType:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/pm/UserTypeFactory$UserTypeUpgrade;->mUpToVersion:I

    return-void
.end method


# virtual methods
.method public getFromType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/UserTypeFactory$UserTypeUpgrade;->mFromType:Ljava/lang/String;

    return-object v0
.end method

.method public getToType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/UserTypeFactory$UserTypeUpgrade;->mToType:Ljava/lang/String;

    return-object v0
.end method

.method public getUpToVersion()I
    .locals 1

    iget v0, p0, Lcom/android/server/pm/UserTypeFactory$UserTypeUpgrade;->mUpToVersion:I

    return v0
.end method
