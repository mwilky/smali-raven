.class public final Lcom/android/systemui/log/LogMessageImpl;
.super Ljava/lang/Object;
.source "LogMessageImpl.kt"

# interfaces
.implements Lcom/android/systemui/log/LogMessage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/log/LogMessageImpl$Factory;
    }
.end annotation


# static fields
.field public static final Factory:Lcom/android/systemui/log/LogMessageImpl$Factory;


# instance fields
.field private bool1:Z

.field private bool2:Z

.field private bool3:Z

.field private bool4:Z

.field private double1:D

.field private int1:I

.field private int2:I

.field private level:Lcom/android/systemui/log/LogLevel;

.field private long1:J

.field private long2:J

.field private printer:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/android/systemui/log/LogMessage;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private str1:Ljava/lang/String;

.field private str2:Ljava/lang/String;

.field private str3:Ljava/lang/String;

.field private tag:Ljava/lang/String;

.field private timestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/log/LogMessageImpl$Factory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/log/LogMessageImpl$Factory;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/log/LogMessageImpl;->Factory:Lcom/android/systemui/log/LogMessageImpl$Factory;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/log/LogLevel;Ljava/lang/String;JLkotlin/jvm/functions/Function1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJDZZZZ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/log/LogLevel;",
            "Ljava/lang/String;",
            "J",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/android/systemui/log/LogMessage;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIJJDZZZZ)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p5

    const-string v4, "level"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "tag"

    invoke-static {p2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "printer"

    invoke-static {p5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/log/LogMessageImpl;->level:Lcom/android/systemui/log/LogLevel;

    iput-object v2, v0, Lcom/android/systemui/log/LogMessageImpl;->tag:Ljava/lang/String;

    move-wide v1, p3

    iput-wide v1, v0, Lcom/android/systemui/log/LogMessageImpl;->timestamp:J

    iput-object v3, v0, Lcom/android/systemui/log/LogMessageImpl;->printer:Lkotlin/jvm/functions/Function1;

    move-object v1, p6

    iput-object v1, v0, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    move-object v1, p7

    iput-object v1, v0, Lcom/android/systemui/log/LogMessageImpl;->str2:Ljava/lang/String;

    move-object v1, p8

    iput-object v1, v0, Lcom/android/systemui/log/LogMessageImpl;->str3:Ljava/lang/String;

    move v1, p9

    iput v1, v0, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    move v1, p10

    iput v1, v0, Lcom/android/systemui/log/LogMessageImpl;->int2:I

    move-wide/from16 v1, p11

    iput-wide v1, v0, Lcom/android/systemui/log/LogMessageImpl;->long1:J

    move-wide/from16 v1, p13

    iput-wide v1, v0, Lcom/android/systemui/log/LogMessageImpl;->long2:J

    move-wide/from16 v1, p15

    iput-wide v1, v0, Lcom/android/systemui/log/LogMessageImpl;->double1:D

    move/from16 v1, p17

    iput-boolean v1, v0, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    move/from16 v1, p18

    iput-boolean v1, v0, Lcom/android/systemui/log/LogMessageImpl;->bool2:Z

    move/from16 v1, p19

    iput-boolean v1, v0, Lcom/android/systemui/log/LogMessageImpl;->bool3:Z

    move/from16 v1, p20

    iput-boolean v1, v0, Lcom/android/systemui/log/LogMessageImpl;->bool4:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/log/LogMessageImpl;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/log/LogMessageImpl;

    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getLevel()Lcom/android/systemui/log/LogLevel;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/systemui/log/LogMessageImpl;->getLevel()Lcom/android/systemui/log/LogLevel;

    move-result-object v3

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/systemui/log/LogMessageImpl;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getTimestamp()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/android/systemui/log/LogMessageImpl;->getTimestamp()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getPrinter()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/systemui/log/LogMessageImpl;->getPrinter()Lkotlin/jvm/functions/Function1;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getStr1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/systemui/log/LogMessageImpl;->getStr1()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getStr2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/systemui/log/LogMessageImpl;->getStr2()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getStr3()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/systemui/log/LogMessageImpl;->getStr3()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getInt1()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/systemui/log/LogMessageImpl;->getInt1()I

    move-result v3

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getInt2()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/systemui/log/LogMessageImpl;->getInt2()I

    move-result v3

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getLong1()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/android/systemui/log/LogMessageImpl;->getLong1()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_b

    return v2

    :cond_b
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getLong2()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/android/systemui/log/LogMessageImpl;->getLong2()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_c

    return v2

    :cond_c
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getDouble1()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/systemui/log/LogMessageImpl;->getDouble1()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getBool1()Z

    move-result v1

    invoke-virtual {p1}, Lcom/android/systemui/log/LogMessageImpl;->getBool1()Z

    move-result v3

    if-eq v1, v3, :cond_e

    return v2

    :cond_e
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getBool2()Z

    move-result v1

    invoke-virtual {p1}, Lcom/android/systemui/log/LogMessageImpl;->getBool2()Z

    move-result v3

    if-eq v1, v3, :cond_f

    return v2

    :cond_f
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getBool3()Z

    move-result v1

    invoke-virtual {p1}, Lcom/android/systemui/log/LogMessageImpl;->getBool3()Z

    move-result v3

    if-eq v1, v3, :cond_10

    return v2

    :cond_10
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getBool4()Z

    move-result p0

    invoke-virtual {p1}, Lcom/android/systemui/log/LogMessageImpl;->getBool4()Z

    move-result p1

    if-eq p0, p1, :cond_11

    return v2

    :cond_11
    return v0
.end method

.method public getBool1()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    return p0
.end method

.method public getBool2()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/log/LogMessageImpl;->bool2:Z

    return p0
.end method

.method public getBool3()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/log/LogMessageImpl;->bool3:Z

    return p0
.end method

.method public getBool4()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/log/LogMessageImpl;->bool4:Z

    return p0
.end method

.method public getDouble1()D
    .locals 2

    iget-wide v0, p0, Lcom/android/systemui/log/LogMessageImpl;->double1:D

    return-wide v0
.end method

.method public getInt1()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    return p0
.end method

.method public getInt2()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/log/LogMessageImpl;->int2:I

    return p0
.end method

.method public getLevel()Lcom/android/systemui/log/LogLevel;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/log/LogMessageImpl;->level:Lcom/android/systemui/log/LogLevel;

    return-object p0
.end method

.method public getLong1()J
    .locals 2

    iget-wide v0, p0, Lcom/android/systemui/log/LogMessageImpl;->long1:J

    return-wide v0
.end method

.method public getLong2()J
    .locals 2

    iget-wide v0, p0, Lcom/android/systemui/log/LogMessageImpl;->long2:J

    return-wide v0
.end method

.method public getPrinter()Lkotlin/jvm/functions/Function1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/android/systemui/log/LogMessage;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/log/LogMessageImpl;->printer:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public getStr1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    return-object p0
.end method

.method public getStr2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/log/LogMessageImpl;->str2:Ljava/lang/String;

    return-object p0
.end method

.method public getStr3()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/log/LogMessageImpl;->str3:Ljava/lang/String;

    return-object p0
.end method

.method public getTag()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/log/LogMessageImpl;->tag:Ljava/lang/String;

    return-object p0
.end method

.method public getTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/android/systemui/log/LogMessageImpl;->timestamp:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getLevel()Lcom/android/systemui/log/LogLevel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getTimestamp()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getPrinter()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getStr1()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getStr1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getStr2()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getStr2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getStr3()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getStr3()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getInt1()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getInt2()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getLong1()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getLong2()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getDouble1()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->hashCode(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getBool1()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    move v1, v2

    :cond_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getBool2()Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v2

    :cond_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getBool3()Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v2

    :cond_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getBool4()Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_3

    :cond_6
    move v2, p0

    :goto_3
    add-int/2addr v0, v2

    return v0
.end method

.method public final reset(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;JLkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/systemui/log/LogLevel;",
            "J",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/android/systemui/log/LogMessage;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "level"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "renderer"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/android/systemui/log/LogMessageImpl;->setLevel(Lcom/android/systemui/log/LogLevel;)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/log/LogMessageImpl;->setTag(Ljava/lang/String;)V

    invoke-virtual {p0, p3, p4}, Lcom/android/systemui/log/LogMessageImpl;->setTimestamp(J)V

    invoke-virtual {p0, p5}, Lcom/android/systemui/log/LogMessageImpl;->setPrinter(Lkotlin/jvm/functions/Function1;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/log/LogMessageImpl;->setStr1(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/log/LogMessageImpl;->setStr2(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/log/LogMessageImpl;->setStr3(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/log/LogMessageImpl;->setInt1(I)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/log/LogMessageImpl;->setInt2(I)V

    const-wide/16 p2, 0x0

    invoke-virtual {p0, p2, p3}, Lcom/android/systemui/log/LogMessageImpl;->setLong1(J)V

    invoke-virtual {p0, p2, p3}, Lcom/android/systemui/log/LogMessageImpl;->setLong2(J)V

    const-wide/16 p2, 0x0

    invoke-virtual {p0, p2, p3}, Lcom/android/systemui/log/LogMessageImpl;->setDouble1(D)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/log/LogMessageImpl;->setBool1(Z)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/log/LogMessageImpl;->setBool2(Z)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/log/LogMessageImpl;->setBool3(Z)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/log/LogMessageImpl;->setBool4(Z)V

    return-void
.end method

.method public setBool1(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    return-void
.end method

.method public setBool2(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/log/LogMessageImpl;->bool2:Z

    return-void
.end method

.method public setBool3(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/log/LogMessageImpl;->bool3:Z

    return-void
.end method

.method public setBool4(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/log/LogMessageImpl;->bool4:Z

    return-void
.end method

.method public setDouble1(D)V
    .locals 0

    iput-wide p1, p0, Lcom/android/systemui/log/LogMessageImpl;->double1:D

    return-void
.end method

.method public setInt1(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    return-void
.end method

.method public setInt2(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/log/LogMessageImpl;->int2:I

    return-void
.end method

.method public setLevel(Lcom/android/systemui/log/LogLevel;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/log/LogMessageImpl;->level:Lcom/android/systemui/log/LogLevel;

    return-void
.end method

.method public setLong1(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/systemui/log/LogMessageImpl;->long1:J

    return-void
.end method

.method public setLong2(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/systemui/log/LogMessageImpl;->long2:J

    return-void
.end method

.method public setPrinter(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/android/systemui/log/LogMessage;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/log/LogMessageImpl;->printer:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public setStr1(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    return-void
.end method

.method public setStr2(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/log/LogMessageImpl;->str2:Ljava/lang/String;

    return-void
.end method

.method public setStr3(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/log/LogMessageImpl;->str3:Ljava/lang/String;

    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/log/LogMessageImpl;->tag:Ljava/lang/String;

    return-void
.end method

.method public setTimestamp(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/systemui/log/LogMessageImpl;->timestamp:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LogMessageImpl(level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getLevel()Lcom/android/systemui/log/LogLevel;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", printer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getPrinter()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", str1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getStr1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", str2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getStr2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", str3="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getStr3()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", int1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getInt1()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", int2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getInt2()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", long1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getLong1()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", long2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getLong2()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", double1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getDouble1()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", bool1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getBool1()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", bool2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getBool2()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", bool3="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getBool3()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", bool4="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getBool4()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
