.class public final Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;
.super Ljava/lang/Object;
.source "ReedSolomonEncoder.java"


# instance fields
.field public final cachedGenerators:Ljava/util/ArrayList;

.field public final field:Lcom/google/zxing/common/reedsolomon/GenericGF;


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->cachedGenerators:Ljava/util/ArrayList;

    new-instance p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    aput v1, v2, v3

    invoke-direct {p0, p1, v2}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final encode(I[I)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    if-eqz v1, :cond_1e

    array-length v3, v2

    sub-int/2addr v3, v1

    if-lez v3, :cond_1d

    iget-object v4, v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->cachedGenerators:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const-string v5, "GenericGFPolys do not have same GenericGF field"

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-lt v1, v4, :cond_a

    iget-object v4, v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->cachedGenerators:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v7

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    iget-object v8, v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->cachedGenerators:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    :goto_0
    if-gt v8, v1, :cond_a

    iget-object v9, v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    const/4 v10, 0x2

    new-array v11, v10, [I

    aput v7, v11, v6

    add-int/lit8 v12, v8, -0x1

    iget v13, v9, Lcom/google/zxing/common/reedsolomon/GenericGF;->generatorBase:I

    add-int/2addr v12, v13

    invoke-virtual {v9}, Lcom/google/zxing/common/reedsolomon/GenericGF;->checkInit()V

    iget-object v13, v9, Lcom/google/zxing/common/reedsolomon/GenericGF;->expTable:[I

    aget v12, v13, v12

    aput v12, v11, v7

    aget v12, v11, v6

    if-nez v12, :cond_2

    move v12, v7

    :goto_1
    if-ge v12, v10, :cond_0

    aget v13, v11, v12

    if-nez v13, :cond_0

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_0
    if-ne v12, v10, :cond_1

    invoke-virtual {v9}, Lcom/google/zxing/common/reedsolomon/GenericGF;->checkInit()V

    iget-object v10, v9, Lcom/google/zxing/common/reedsolomon/GenericGF;->zero:Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    iget-object v11, v10, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    goto :goto_2

    :cond_1
    rsub-int/lit8 v10, v12, 0x2

    new-array v13, v10, [I

    invoke-static {v11, v12, v13, v6, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v11, v13

    :cond_2
    :goto_2
    iget-object v10, v4, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v10, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    iget-object v9, v4, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    aget v10, v9, v6

    if-nez v10, :cond_3

    move v10, v7

    goto :goto_3

    :cond_3
    move v10, v6

    :goto_3
    if-nez v10, :cond_8

    aget v10, v11, v6

    if-nez v10, :cond_4

    move v10, v7

    goto :goto_4

    :cond_4
    move v10, v6

    :goto_4
    if-eqz v10, :cond_5

    goto :goto_7

    :cond_5
    array-length v10, v9

    array-length v12, v11

    add-int v13, v10, v12

    add-int/lit8 v13, v13, -0x1

    new-array v13, v13, [I

    move v14, v6

    :goto_5
    if-ge v14, v10, :cond_7

    aget v15, v9, v14

    move v7, v6

    :goto_6
    if-ge v7, v12, :cond_6

    add-int v16, v14, v7

    aget v17, v13, v16

    iget-object v6, v4, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    move-object/from16 v18, v9

    aget v9, v11, v7

    invoke-virtual {v6, v15, v9}, Lcom/google/zxing/common/reedsolomon/GenericGF;->multiply(II)I

    move-result v6

    xor-int v6, v6, v17

    aput v6, v13, v16

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v9, v18

    const/4 v6, 0x0

    goto :goto_6

    :cond_6
    move-object/from16 v18, v9

    add-int/lit8 v14, v14, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    goto :goto_5

    :cond_7
    new-instance v6, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    iget-object v4, v4, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-direct {v6, v4, v13}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    move-object v4, v6

    goto :goto_8

    :cond_8
    :goto_7
    iget-object v4, v4, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v4}, Lcom/google/zxing/common/reedsolomon/GenericGF;->checkInit()V

    iget-object v4, v4, Lcom/google/zxing/common/reedsolomon/GenericGF;->zero:Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    :goto_8
    iget-object v6, v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->cachedGenerators:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    goto/16 :goto_0

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iget-object v4, v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->cachedGenerators:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    new-array v6, v3, [I

    const/4 v7, 0x0

    invoke-static {v2, v7, v6, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    if-eqz v3, :cond_1c

    const/4 v8, 0x1

    if-le v3, v8, :cond_d

    aget v8, v6, v7

    if-nez v8, :cond_d

    const/4 v8, 0x1

    :goto_9
    if-ge v8, v3, :cond_b

    aget v7, v6, v8

    if-nez v7, :cond_b

    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    :cond_b
    if-ne v8, v3, :cond_c

    invoke-virtual {v0}, Lcom/google/zxing/common/reedsolomon/GenericGF;->checkInit()V

    iget-object v6, v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->zero:Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    iget-object v6, v6, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    goto :goto_a

    :cond_c
    sub-int v7, v3, v8

    new-array v9, v7, [I

    const/4 v10, 0x0

    invoke-static {v6, v8, v9, v10, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v6, v9

    :cond_d
    :goto_a
    if-ltz v1, :cond_1b

    array-length v7, v6

    add-int v8, v1, v7

    new-array v8, v8, [I

    const/4 v9, 0x0

    :goto_b
    if-ge v9, v7, :cond_e

    aget v10, v6, v9

    const/4 v11, 0x1

    invoke-virtual {v0, v10, v11}, Lcom/google/zxing/common/reedsolomon/GenericGF;->multiply(II)I

    move-result v10

    aput v10, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_b

    :cond_e
    const/4 v11, 0x1

    new-instance v6, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    invoke-direct {v6, v0, v8}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    iget-object v7, v4, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a

    iget-object v5, v4, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    const/4 v7, 0x0

    aget v5, v5, v7

    if-nez v5, :cond_f

    move v5, v11

    goto :goto_c

    :cond_f
    const/4 v5, 0x0

    :goto_c
    if-nez v5, :cond_19

    invoke-virtual {v0}, Lcom/google/zxing/common/reedsolomon/GenericGF;->checkInit()V

    iget-object v5, v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->zero:Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    iget-object v7, v4, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    array-length v8, v7

    add-int/lit8 v8, v8, -0x1

    array-length v9, v7

    add-int/lit8 v9, v9, -0x1

    sub-int/2addr v9, v8

    aget v7, v7, v9

    invoke-virtual {v0}, Lcom/google/zxing/common/reedsolomon/GenericGF;->checkInit()V

    if-eqz v7, :cond_18

    iget-object v8, v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->expTable:[I

    iget v9, v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->size:I

    iget-object v0, v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->logTable:[I

    aget v0, v0, v7

    sub-int/2addr v9, v0

    add-int/lit8 v9, v9, -0x1

    aget v0, v8, v9

    move-object v7, v6

    :goto_d
    iget-object v8, v7, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    array-length v9, v8

    add-int/lit8 v9, v9, -0x1

    iget-object v10, v4, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    array-length v12, v10

    add-int/lit8 v12, v12, -0x1

    if-lt v9, v12, :cond_16

    const/4 v9, 0x0

    aget v12, v8, v9

    if-nez v12, :cond_10

    move v9, v11

    goto :goto_e

    :cond_10
    const/4 v9, 0x0

    :goto_e
    if-nez v9, :cond_16

    array-length v9, v8

    add-int/lit8 v9, v9, -0x1

    array-length v10, v10

    add-int/lit8 v10, v10, -0x1

    sub-int/2addr v9, v10

    iget-object v10, v6, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    array-length v12, v8

    add-int/lit8 v12, v12, -0x1

    array-length v13, v8

    add-int/lit8 v13, v13, -0x1

    sub-int/2addr v13, v12

    aget v8, v8, v13

    invoke-virtual {v10, v8, v0}, Lcom/google/zxing/common/reedsolomon/GenericGF;->multiply(II)I

    move-result v8

    if-ltz v9, :cond_15

    if-nez v8, :cond_11

    iget-object v10, v4, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v10}, Lcom/google/zxing/common/reedsolomon/GenericGF;->checkInit()V

    iget-object v10, v10, Lcom/google/zxing/common/reedsolomon/GenericGF;->zero:Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    goto :goto_10

    :cond_11
    iget-object v10, v4, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    array-length v10, v10

    add-int v12, v9, v10

    new-array v12, v12, [I

    const/4 v13, 0x0

    :goto_f
    if-ge v13, v10, :cond_12

    iget-object v14, v4, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    iget-object v15, v4, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    aget v15, v15, v13

    invoke-virtual {v14, v15, v8}, Lcom/google/zxing/common/reedsolomon/GenericGF;->multiply(II)I

    move-result v14

    aput v14, v12, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_f

    :cond_12
    new-instance v10, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    iget-object v13, v4, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-direct {v10, v13, v12}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    :goto_10
    iget-object v12, v6, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v12}, Lcom/google/zxing/common/reedsolomon/GenericGF;->checkInit()V

    if-ltz v9, :cond_14

    if-nez v8, :cond_13

    iget-object v8, v12, Lcom/google/zxing/common/reedsolomon/GenericGF;->zero:Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    goto :goto_11

    :cond_13
    add-int/lit8 v9, v9, 0x1

    new-array v9, v9, [I

    const/4 v13, 0x0

    aput v8, v9, v13

    new-instance v8, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    invoke-direct {v8, v12, v9}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    :goto_11
    invoke-virtual {v5, v8}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->addOrSubtract(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v5

    invoke-virtual {v7, v10}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->addOrSubtract(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v7

    goto :goto_d

    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_16
    array-length v0, v8

    sub-int v0, v1, v0

    const/4 v7, 0x0

    :goto_12
    if-ge v7, v0, :cond_17

    add-int v1, v3, v7

    const/4 v4, 0x0

    aput v4, v2, v1

    add-int/lit8 v7, v7, 0x1

    goto :goto_12

    :cond_17
    const/4 v4, 0x0

    add-int/2addr v3, v0

    array-length v0, v8

    invoke-static {v8, v4, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_18
    new-instance v0, Ljava/lang/ArithmeticException;

    invoke-direct {v0}, Ljava/lang/ArithmeticException;-><init>()V

    throw v0

    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Divide by 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No data bytes provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No error correction bytes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
