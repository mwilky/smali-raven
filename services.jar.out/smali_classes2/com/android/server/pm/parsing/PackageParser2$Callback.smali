.class public abstract Lcom/android/server/pm/parsing/PackageParser2$Callback;
.super Ljava/lang/Object;
.source "PackageParser2.java"

# interfaces
.implements Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/parsing/PackageParser2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract isChangeEnabled(JLandroid/content/pm/ApplicationInfo;)Z
.end method

.method public final startParsingPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->forParsing(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method
