.class public Lcom/seatgeek/sixpack/a;
.super Ljava/lang/Object;
.source "Alternative.java"


# instance fields
.field public final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Alternative name cannot be empty or null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12
    :cond_1
    sget-object v0, Lcom/seatgeek/sixpack/g;->NAME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_2

    .line 13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Alternative name must match regex: ^[a-z0-9][a-z0-9\\-_ ]*$"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 16
    :cond_2
    iput-object p1, p0, Lcom/seatgeek/sixpack/a;->name:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 26
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    .line 31
    :goto_0
    return v0

    .line 27
    :cond_0
    instance-of v0, p1, Lcom/seatgeek/sixpack/a;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 29
    :cond_1
    check-cast p1, Lcom/seatgeek/sixpack/a;

    .line 31
    iget-object v0, p0, Lcom/seatgeek/sixpack/a;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/seatgeek/sixpack/a;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/seatgeek/sixpack/a;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/seatgeek/sixpack/a;->name:Ljava/lang/String;

    return-object v0
.end method
