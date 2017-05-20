.class final Lcom/c/b/c$b;
.super Ljava/lang/Object;
.source "RelaySubscriptionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/c/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final a:Lcom/c/b/c$b;


# instance fields
.field final b:[Lcom/c/b/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 131
    new-instance v0, Lcom/c/b/c$b;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/c/b/c$a;

    invoke-direct {v0, v1}, Lcom/c/b/c$b;-><init>([Lcom/c/b/c$a;)V

    sput-object v0, Lcom/c/b/c$b;->a:Lcom/c/b/c$b;

    return-void
.end method

.method constructor <init>([Lcom/c/b/c$a;)V
    .locals 0

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-object p1, p0, Lcom/c/b/c$b;->b:[Lcom/c/b/c$a;

    .line 137
    return-void
.end method


# virtual methods
.method a(Lcom/c/b/c$a;)Lcom/c/b/c$b;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 140
    iget-object v0, p0, Lcom/c/b/c$b;->b:[Lcom/c/b/c$a;

    .line 141
    array-length v0, v0

    .line 142
    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [Lcom/c/b/c$a;

    .line 143
    iget-object v2, p0, Lcom/c/b/c$b;->b:[Lcom/c/b/c$a;

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 144
    aput-object p1, v1, v0

    .line 145
    new-instance v0, Lcom/c/b/c$b;

    invoke-direct {v0, v1}, Lcom/c/b/c$b;-><init>([Lcom/c/b/c$a;)V

    return-object v0
.end method

.method b(Lcom/c/b/c$a;)Lcom/c/b/c$b;
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 149
    iget-object v5, p0, Lcom/c/b/c$b;->b:[Lcom/c/b/c$a;

    .line 150
    array-length v6, v5

    .line 151
    const/4 v0, 0x1

    if-ne v6, v0, :cond_1

    aget-object v0, v5, v4

    if-ne v0, p1, :cond_1

    .line 152
    sget-object p0, Lcom/c/b/c$b;->a:Lcom/c/b/c$b;

    .line 175
    :cond_0
    :goto_0
    return-object p0

    .line 153
    :cond_1
    if-eqz v6, :cond_0

    .line 156
    add-int/lit8 v0, v6, -0x1

    new-array v2, v0, [Lcom/c/b/c$a;

    move v3, v4

    move v1, v4

    .line 158
    :goto_1
    if-ge v3, v6, :cond_2

    .line 159
    aget-object v7, v5, v3

    .line 160
    if-eq v7, p1, :cond_5

    .line 161
    add-int/lit8 v0, v6, -0x1

    if-eq v1, v0, :cond_0

    .line 164
    add-int/lit8 v0, v1, 0x1

    aput-object v7, v2, v1

    .line 158
    :goto_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_1

    .line 167
    :cond_2
    if-nez v1, :cond_3

    .line 168
    sget-object p0, Lcom/c/b/c$b;->a:Lcom/c/b/c$b;

    goto :goto_0

    .line 170
    :cond_3
    add-int/lit8 v0, v6, -0x1

    if-ge v1, v0, :cond_4

    .line 171
    new-array v0, v1, [Lcom/c/b/c$a;

    .line 172
    invoke-static {v2, v4, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 175
    :goto_3
    new-instance p0, Lcom/c/b/c$b;

    invoke-direct {p0, v0}, Lcom/c/b/c$b;-><init>([Lcom/c/b/c$a;)V

    goto :goto_0

    :cond_4
    move-object v0, v2

    goto :goto_3

    :cond_5
    move v0, v1

    goto :goto_2
.end method
