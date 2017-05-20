.class public final Lio/realm/ah;
.super Ljava/lang/Object;
.source "RealmSchema.java"


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field a:Lio/realm/internal/a;

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lio/realm/internal/Table;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lio/realm/ac;",
            ">;",
            "Lio/realm/internal/Table;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lio/realm/ac;",
            ">;",
            "Lio/realm/ae;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lio/realm/ae;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lio/realm/internal/e;

.field private final h:Lio/realm/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lio/realm/internal/Table;->a:Ljava/lang/String;

    sput-object v0, Lio/realm/ah;->b:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lio/realm/a;Lio/realm/internal/e;)V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/realm/ah;->c:Ljava/util/Map;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/realm/ah;->d:Ljava/util/Map;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/realm/ah;->e:Ljava/util/Map;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/realm/ah;->f:Ljava/util/Map;

    .line 60
    iput-object p1, p0, Lio/realm/ah;->h:Lio/realm/a;

    .line 61
    iput-object p2, p0, Lio/realm/ah;->g:Lio/realm/internal/e;

    .line 62
    return-void
.end method

.method static a(Lio/realm/internal/Table;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 287
    invoke-virtual {p0}, Lio/realm/internal/Table;->l()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lio/realm/internal/Table;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 188
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 189
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_1
    return-void
.end method

.method private static a(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lio/realm/ac;",
            ">;",
            "Ljava/lang/Class",
            "<+",
            "Lio/realm/ac;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 264
    if-eq p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lio/realm/ah;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 195
    iget-object v1, p0, Lio/realm/ah;->g:Lio/realm/internal/e;

    invoke-virtual {v1, v0}, Lio/realm/internal/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 196
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lio/realm/ae;
    .locals 4

    .prologue
    .line 72
    const-string v0, "Null or empty class names are not allowed"

    invoke-direct {p0, p1, v0}, Lio/realm/ah;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lio/realm/ah;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 74
    iget-object v1, p0, Lio/realm/ah;->g:Lio/realm/internal/e;

    invoke-virtual {v1, v0}, Lio/realm/internal/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    iget-object v1, p0, Lio/realm/ah;->g:Lio/realm/internal/e;

    invoke-virtual {v1, v0}, Lio/realm/internal/e;->c(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v1

    .line 76
    new-instance v2, Lio/realm/ae$a;

    invoke-direct {v2, v1}, Lio/realm/ae$a;-><init>(Lio/realm/internal/Table;)V

    .line 77
    new-instance v0, Lio/realm/ae;

    iget-object v3, p0, Lio/realm/ah;->h:Lio/realm/a;

    invoke-direct {v0, v3, v1, v2}, Lio/realm/ae;-><init>(Lio/realm/a;Lio/realm/internal/Table;Ljava/util/Map;)V

    .line 79
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(Ljava/lang/Class;)Lio/realm/internal/b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lio/realm/ac;",
            ">;)",
            "Lio/realm/internal/b;"
        }
    .end annotation

    .prologue
    .line 201
    iget-object v0, p0, Lio/realm/ah;->a:Lio/realm/internal/a;

    invoke-virtual {v0, p1}, Lio/realm/internal/a;->a(Ljava/lang/Class;)Lio/realm/internal/b;

    move-result-object v0

    .line 202
    if-nez v0, :cond_0

    .line 203
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No validated schema information found for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/realm/ah;->h:Lio/realm/a;

    iget-object v2, v2, Lio/realm/a;->d:Lio/realm/x;

    invoke-virtual {v2}, Lio/realm/x;->h()Lio/realm/internal/k;

    move-result-object v2

    invoke-virtual {v2, p1}, Lio/realm/internal/k;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_0
    return-object v0
.end method

.method public b(Ljava/lang/String;)Lio/realm/ae;
    .locals 4

    .prologue
    .line 110
    const-string v0, "Null or empty class names are not allowed"

    invoke-direct {p0, p1, v0}, Lio/realm/ah;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lio/realm/ah;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 112
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x38

    if-le v1, v2, :cond_0

    .line 113
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Class name is to long. Limit is 57 characters: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_0
    iget-object v1, p0, Lio/realm/ah;->g:Lio/realm/internal/e;

    invoke-virtual {v1, v0}, Lio/realm/internal/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 116
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Class already exists: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_1
    iget-object v1, p0, Lio/realm/ah;->g:Lio/realm/internal/e;

    invoke-virtual {v1, v0}, Lio/realm/internal/e;->c(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v0

    .line 119
    new-instance v1, Lio/realm/ae$a;

    invoke-direct {v1, v0}, Lio/realm/ae$a;-><init>(Lio/realm/internal/Table;)V

    .line 120
    new-instance v2, Lio/realm/ae;

    iget-object v3, p0, Lio/realm/ah;->h:Lio/realm/a;

    invoke-direct {v2, v3, v0, v1}, Lio/realm/ae;-><init>(Lio/realm/a;Lio/realm/internal/Table;Ljava/util/Map;)V

    return-object v2
.end method

.method b(Ljava/lang/Class;)Lio/realm/internal/Table;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lio/realm/ac;",
            ">;)",
            "Lio/realm/internal/Table;"
        }
    .end annotation

    .prologue
    .line 222
    iget-object v0, p0, Lio/realm/ah;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/Table;

    .line 223
    if-nez v0, :cond_2

    .line 224
    invoke-static {p1}, Lio/realm/internal/Util;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 225
    invoke-static {v1, p1}, Lio/realm/ah;->a(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 227
    iget-object v0, p0, Lio/realm/ah;->d:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/Table;

    .line 229
    :cond_0
    if-nez v0, :cond_1

    .line 230
    iget-object v0, p0, Lio/realm/ah;->g:Lio/realm/internal/e;

    iget-object v2, p0, Lio/realm/ah;->h:Lio/realm/a;

    iget-object v2, v2, Lio/realm/a;->d:Lio/realm/x;

    invoke-virtual {v2}, Lio/realm/x;->h()Lio/realm/internal/k;

    move-result-object v2

    invoke-virtual {v2, v1}, Lio/realm/internal/k;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/realm/internal/e;->c(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v0

    .line 231
    iget-object v2, p0, Lio/realm/ah;->d:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    :cond_1
    invoke-static {v1, p1}, Lio/realm/ah;->a(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 235
    iget-object v1, p0, Lio/realm/ah;->d:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    :cond_2
    return-object v0
.end method

.method c(Ljava/lang/Class;)Lio/realm/ae;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lio/realm/ac;",
            ">;)",
            "Lio/realm/ae;"
        }
    .end annotation

    .prologue
    .line 242
    iget-object v0, p0, Lio/realm/ah;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/ae;

    .line 243
    if-nez v0, :cond_2

    .line 244
    invoke-static {p1}, Lio/realm/internal/Util;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 245
    invoke-static {v1, p1}, Lio/realm/ah;->a(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 247
    iget-object v0, p0, Lio/realm/ah;->e:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/ae;

    .line 249
    :cond_0
    if-nez v0, :cond_1

    .line 250
    invoke-virtual {p0, p1}, Lio/realm/ah;->b(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v2

    .line 251
    new-instance v0, Lio/realm/ae;

    iget-object v3, p0, Lio/realm/ah;->h:Lio/realm/a;

    iget-object v4, p0, Lio/realm/ah;->a:Lio/realm/internal/a;

    invoke-virtual {v4, v1}, Lio/realm/internal/a;->a(Ljava/lang/Class;)Lio/realm/internal/b;

    move-result-object v4

    invoke-virtual {v4}, Lio/realm/internal/b;->a()Ljava/util/Map;

    move-result-object v4

    invoke-direct {v0, v3, v2, v4}, Lio/realm/ae;-><init>(Lio/realm/a;Lio/realm/internal/Table;Ljava/util/Map;)V

    .line 252
    iget-object v2, p0, Lio/realm/ah;->e:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    :cond_1
    invoke-static {v1, p1}, Lio/realm/ah;->a(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 256
    iget-object v1, p0, Lio/realm/ah;->e:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    :cond_2
    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 130
    const-string v0, "Null or empty class names are not allowed"

    invoke-direct {p0, p1, v0}, Lio/realm/ah;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lio/realm/ah;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot remove class because it is not in this Realm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lio/realm/ah;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0, p1}, Lio/realm/ah;->e(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v1

    .line 134
    invoke-virtual {v1}, Lio/realm/internal/Table;->g()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 135
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lio/realm/internal/Table;->b(Ljava/lang/String;)V

    .line 137
    :cond_0
    iget-object v1, p0, Lio/realm/ah;->g:Lio/realm/internal/e;

    invoke-virtual {v1, v0}, Lio/realm/internal/e;->b(Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method public d(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 184
    iget-object v0, p0, Lio/realm/ah;->g:Lio/realm/internal/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lio/realm/internal/Table;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/realm/internal/e;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method e(Ljava/lang/String;)Lio/realm/internal/Table;
    .locals 4

    .prologue
    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lio/realm/internal/Table;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 210
    iget-object v0, p0, Lio/realm/ah;->c:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/Table;

    .line 211
    if-nez v0, :cond_1

    .line 212
    iget-object v0, p0, Lio/realm/ah;->g:Lio/realm/internal/e;

    invoke-virtual {v0, v1}, Lio/realm/internal/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 213
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " doesn\'t exist in this Realm."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_0
    iget-object v0, p0, Lio/realm/ah;->g:Lio/realm/internal/e;

    invoke-virtual {v0, v1}, Lio/realm/internal/e;->c(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v0

    .line 216
    iget-object v2, p0, Lio/realm/ah;->c:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    :cond_1
    return-object v0
.end method

.method f(Ljava/lang/String;)Lio/realm/ae;
    .locals 5

    .prologue
    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lio/realm/internal/Table;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 269
    iget-object v0, p0, Lio/realm/ah;->f:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/ae;

    .line 270
    if-nez v0, :cond_1

    .line 271
    iget-object v0, p0, Lio/realm/ah;->g:Lio/realm/internal/e;

    invoke-virtual {v0, v1}, Lio/realm/internal/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 272
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " doesn\'t exist in this Realm."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 274
    :cond_0
    iget-object v0, p0, Lio/realm/ah;->g:Lio/realm/internal/e;

    invoke-virtual {v0, v1}, Lio/realm/internal/e;->c(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v2

    .line 275
    new-instance v3, Lio/realm/ae$a;

    invoke-direct {v3, v2}, Lio/realm/ae$a;-><init>(Lio/realm/internal/Table;)V

    .line 276
    new-instance v0, Lio/realm/ae;

    iget-object v4, p0, Lio/realm/ah;->h:Lio/realm/a;

    invoke-direct {v0, v4, v2, v3}, Lio/realm/ae;-><init>(Lio/realm/a;Lio/realm/internal/Table;Ljava/util/Map;)V

    .line 277
    iget-object v2, p0, Lio/realm/ah;->f:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    :cond_1
    return-object v0
.end method
