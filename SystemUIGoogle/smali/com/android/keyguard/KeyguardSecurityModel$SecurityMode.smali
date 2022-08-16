.class public final enum Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
.super Ljava/lang/Enum;
.source "KeyguardSecurityModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSecurityModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SecurityMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

.field public static final enum Invalid:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

.field public static final enum None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

.field public static final enum PIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

.field public static final enum Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

.field public static final enum Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

.field public static final enum SimPin:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

.field public static final enum SimPuk:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;


# direct methods
.method public static constructor <clinit>()V
    .locals 15

    new-instance v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    const/4 v1, 0x0

    const-string v2, "Invalid"

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Invalid:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    new-instance v2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    const/4 v3, 0x1

    const-string v4, "None"

    invoke-direct {v2, v3, v4}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;-><init>(ILjava/lang/String;)V

    sput-object v2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    new-instance v4, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    const/4 v5, 0x2

    const-string v6, "Pattern"

    invoke-direct {v4, v5, v6}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;-><init>(ILjava/lang/String;)V

    sput-object v4, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    new-instance v6, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    const/4 v7, 0x3

    const-string v8, "Password"

    invoke-direct {v6, v7, v8}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;-><init>(ILjava/lang/String;)V

    sput-object v6, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    new-instance v8, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    const/4 v9, 0x4

    const-string v10, "PIN"

    invoke-direct {v8, v9, v10}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;-><init>(ILjava/lang/String;)V

    sput-object v8, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    new-instance v10, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    const/4 v11, 0x5

    const-string v12, "SimPin"

    invoke-direct {v10, v11, v12}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;-><init>(ILjava/lang/String;)V

    sput-object v10, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPin:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    new-instance v12, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    const/4 v13, 0x6

    const-string v14, "SimPuk"

    invoke-direct {v12, v13, v14}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;-><init>(ILjava/lang/String;)V

    sput-object v12, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPuk:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    const/4 v14, 0x7

    new-array v14, v14, [Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    aput-object v0, v14, v1

    aput-object v2, v14, v3

    aput-object v4, v14, v5

    aput-object v6, v14, v7

    aput-object v8, v14, v9

    aput-object v10, v14, v11

    aput-object v12, v14, v13

    sput-object v14, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->$VALUES:[Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    .locals 1

    const-class v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-object p0
.end method

.method public static values()[Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    .locals 1

    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->$VALUES:[Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v0}, [Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-object v0
.end method
