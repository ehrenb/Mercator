.class public Lio/realm/g;
.super Lcm/aptoide/pt/database/realm/ExcludedAd;
.source "ExcludedAdRealmProxy.java"

# interfaces
.implements Lio/realm/h;
.implements Lio/realm/internal/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/g$a;
    }
.end annotation


# static fields
.field private static final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lio/realm/g$a;

.field private final b:Lio/realm/t;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 48
    const-string v1, "packageName"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/realm/g;->c:Ljava/util/List;

    .line 50
    return-void
.end method

.method constructor <init>(Lio/realm/internal/b;)V
    .locals 2

    .prologue
    .line 52
    invoke-direct {p0}, Lcm/aptoide/pt/database/realm/ExcludedAd;-><init>()V

    .line 53
    check-cast p1, Lio/realm/g$a;

    iput-object p1, p0, Lio/realm/g;->a:Lio/realm/g$a;

    .line 54
    new-instance v0, Lio/realm/t;

    const-class v1, Lcm/aptoide/pt/database/realm/ExcludedAd;

    invoke-direct {v0, v1, p0}, Lio/realm/t;-><init>(Ljava/lang/Class;Lio/realm/ac;)V

    iput-object v0, p0, Lio/realm/g;->b:Lio/realm/t;

    .line 55
    return-void
.end method

.method public static a(Lio/realm/u;Lcm/aptoide/pt/database/realm/ExcludedAd;Ljava/util/Map;)J
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/u;",
            "Lcm/aptoide/pt/database/realm/ExcludedAd;",
            "Ljava/util/Map",
            "<",
            "Lio/realm/ac;",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    .prologue
    const-wide/16 v8, -0x1

    .line 288
    instance-of v0, p1, Lio/realm/internal/j;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lio/realm/internal/j;

    invoke-interface {v0}, Lio/realm/internal/j;->b()Lio/realm/t;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lio/realm/internal/j;

    invoke-interface {v0}, Lio/realm/internal/j;->b()Lio/realm/t;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lio/realm/u;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    check-cast p1, Lio/realm/internal/j;

    invoke-interface {p1}, Lio/realm/internal/j;->b()Lio/realm/t;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/l;->c()J

    move-result-wide v4

    .line 307
    :goto_0
    return-wide v4

    .line 291
    :cond_0
    const-class v0, Lcm/aptoide/pt/database/realm/ExcludedAd;

    invoke-virtual {p0, v0}, Lio/realm/u;->d(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v3

    .line 292
    invoke-virtual {v3}, Lio/realm/internal/Table;->a()J

    move-result-wide v0

    .line 293
    iget-object v2, p0, Lio/realm/u;->f:Lio/realm/ah;

    const-class v4, Lcm/aptoide/pt/database/realm/ExcludedAd;

    invoke-virtual {v2, v4}, Lio/realm/ah;->a(Ljava/lang/Class;)Lio/realm/internal/b;

    move-result-object v2

    check-cast v2, Lio/realm/g$a;

    .line 294
    invoke-virtual {v3}, Lio/realm/internal/Table;->f()J

    move-result-wide v2

    move-object v4, p1

    .line 296
    check-cast v4, Lio/realm/h;

    invoke-interface {v4}, Lio/realm/h;->realmGet$packageName()Ljava/lang/String;

    move-result-object v6

    .line 297
    if-eqz v6, :cond_2

    move-object v4, v6

    .line 298
    check-cast v4, Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lio/realm/internal/Table;->nativeFindFirstString(JJLjava/lang/String;)J

    move-result-wide v4

    .line 300
    :goto_1
    cmp-long v7, v4, v8

    if-nez v7, :cond_1

    .line 301
    const-wide/16 v4, 0x1

    invoke-static {v0, v1, v4, v5}, Lio/realm/internal/Table;->nativeAddEmptyRow(JJ)J

    move-result-wide v4

    .line 302
    if-eqz v6, :cond_1

    .line 303
    check-cast v6, Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    .line 306
    :cond_1
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    move-wide v4, v8

    goto :goto_1
.end method

.method public static a(Lcm/aptoide/pt/database/realm/ExcludedAd;IILjava/util/Map;)Lcm/aptoide/pt/database/realm/ExcludedAd;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/database/realm/ExcludedAd;",
            "II",
            "Ljava/util/Map",
            "<",
            "Lio/realm/ac;",
            "Lio/realm/internal/j$a",
            "<",
            "Lio/realm/ac;",
            ">;>;)",
            "Lcm/aptoide/pt/database/realm/ExcludedAd;"
        }
    .end annotation

    .prologue
    .line 340
    if-gt p1, p2, :cond_0

    if-nez p0, :cond_1

    .line 341
    :cond_0
    const/4 v0, 0x0

    .line 358
    :goto_0
    return-object v0

    .line 343
    :cond_1
    invoke-interface {p3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/j$a;

    .line 345
    if-eqz v0, :cond_3

    .line 347
    iget v1, v0, Lio/realm/internal/j$a;->a:I

    if-lt p1, v1, :cond_2

    .line 348
    iget-object v0, v0, Lio/realm/internal/j$a;->b:Lio/realm/ac;

    check-cast v0, Lcm/aptoide/pt/database/realm/ExcludedAd;

    goto :goto_0

    .line 350
    :cond_2
    iget-object v1, v0, Lio/realm/internal/j$a;->b:Lio/realm/ac;

    check-cast v1, Lcm/aptoide/pt/database/realm/ExcludedAd;

    .line 351
    iput p1, v0, Lio/realm/internal/j$a;->a:I

    :goto_1
    move-object v0, v1

    .line 357
    check-cast v0, Lio/realm/h;

    check-cast p0, Lio/realm/h;

    invoke-interface {p0}, Lio/realm/h;->realmGet$packageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/h;->realmSet$packageName(Ljava/lang/String;)V

    move-object v0, v1

    .line 358
    goto :goto_0

    .line 354
    :cond_3
    new-instance v1, Lcm/aptoide/pt/database/realm/ExcludedAd;

    invoke-direct {v1}, Lcm/aptoide/pt/database/realm/ExcludedAd;-><init>()V

    .line 355
    new-instance v0, Lio/realm/internal/j$a;

    invoke-direct {v0, p1, v1}, Lio/realm/internal/j$a;-><init>(ILio/realm/ac;)V

    invoke-interface {p3, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method static a(Lio/realm/u;Lcm/aptoide/pt/database/realm/ExcludedAd;Lcm/aptoide/pt/database/realm/ExcludedAd;Ljava/util/Map;)Lcm/aptoide/pt/database/realm/ExcludedAd;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/u;",
            "Lcm/aptoide/pt/database/realm/ExcludedAd;",
            "Lcm/aptoide/pt/database/realm/ExcludedAd;",
            "Ljava/util/Map",
            "<",
            "Lio/realm/ac;",
            "Lio/realm/internal/j;",
            ">;)",
            "Lcm/aptoide/pt/database/realm/ExcludedAd;"
        }
    .end annotation

    .prologue
    .line 362
    return-object p1
.end method

.method public static a(Lio/realm/u;Lcm/aptoide/pt/database/realm/ExcludedAd;ZLjava/util/Map;)Lcm/aptoide/pt/database/realm/ExcludedAd;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/u;",
            "Lcm/aptoide/pt/database/realm/ExcludedAd;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Lio/realm/ac;",
            "Lio/realm/internal/j;",
            ">;)",
            "Lcm/aptoide/pt/database/realm/ExcludedAd;"
        }
    .end annotation

    .prologue
    .line 185
    instance-of v0, p1, Lio/realm/internal/j;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lio/realm/internal/j;

    invoke-interface {v0}, Lio/realm/internal/j;->b()Lio/realm/t;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lio/realm/internal/j;

    invoke-interface {v0}, Lio/realm/internal/j;->b()Lio/realm/t;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    iget-wide v0, v0, Lio/realm/a;->c:J

    iget-wide v2, p0, Lio/realm/u;->c:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 186
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Objects which belong to Realm instances in other threads cannot be copied into this Realm instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :cond_0
    instance-of v0, p1, Lio/realm/internal/j;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lio/realm/internal/j;

    invoke-interface {v0}, Lio/realm/internal/j;->b()Lio/realm/t;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lio/realm/internal/j;

    invoke-interface {v0}, Lio/realm/internal/j;->b()Lio/realm/t;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lio/realm/u;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 214
    :goto_0
    return-object p1

    .line 191
    :cond_1
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/j;

    .line 192
    if-eqz v0, :cond_2

    .line 193
    check-cast v0, Lcm/aptoide/pt/database/realm/ExcludedAd;

    move-object p1, v0

    goto :goto_0

    .line 195
    :cond_2
    const/4 v1, 0x0

    .line 197
    if-eqz p2, :cond_5

    .line 198
    const-class v0, Lcm/aptoide/pt/database/realm/ExcludedAd;

    invoke-virtual {p0, v0}, Lio/realm/u;->d(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v2

    .line 199
    invoke-virtual {v2}, Lio/realm/internal/Table;->f()J

    move-result-wide v4

    move-object v0, p1

    .line 200
    check-cast v0, Lio/realm/h;

    invoke-interface {v0}, Lio/realm/h;->realmGet$packageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v4, v5, v0}, Lio/realm/internal/Table;->a(JLjava/lang/String;)J

    move-result-wide v4

    .line 201
    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-eqz v0, :cond_3

    .line 202
    new-instance v1, Lio/realm/g;

    iget-object v0, p0, Lio/realm/u;->f:Lio/realm/ah;

    const-class v3, Lcm/aptoide/pt/database/realm/ExcludedAd;

    invoke-virtual {v0, v3}, Lio/realm/ah;->a(Ljava/lang/Class;)Lio/realm/internal/b;

    move-result-object v0

    invoke-direct {v1, v0}, Lio/realm/g;-><init>(Lio/realm/internal/b;)V

    move-object v0, v1

    .line 203
    check-cast v0, Lio/realm/internal/j;

    invoke-interface {v0}, Lio/realm/internal/j;->b()Lio/realm/t;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/realm/t;->a(Lio/realm/a;)V

    move-object v0, v1

    .line 204
    check-cast v0, Lio/realm/internal/j;

    invoke-interface {v0}, Lio/realm/internal/j;->b()Lio/realm/t;

    move-result-object v0

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->j(J)Lio/realm/internal/UncheckedRow;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/realm/t;->a(Lio/realm/internal/l;)V

    move-object v0, v1

    .line 205
    check-cast v0, Lio/realm/internal/j;

    invoke-interface {p3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, p2

    .line 211
    :goto_1
    if-eqz v0, :cond_4

    .line 212
    invoke-static {p0, v1, p1, p3}, Lio/realm/g;->a(Lio/realm/u;Lcm/aptoide/pt/database/realm/ExcludedAd;Lcm/aptoide/pt/database/realm/ExcludedAd;Ljava/util/Map;)Lcm/aptoide/pt/database/realm/ExcludedAd;

    move-result-object p1

    goto :goto_0

    .line 207
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 214
    :cond_4
    invoke-static {p0, p1, p2, p3}, Lio/realm/g;->b(Lio/realm/u;Lcm/aptoide/pt/database/realm/ExcludedAd;ZLjava/util/Map;)Lcm/aptoide/pt/database/realm/ExcludedAd;

    move-result-object p1

    goto :goto_0

    :cond_5
    move v0, p2

    goto :goto_1
.end method

.method public static a(Lio/realm/internal/e;)Lio/realm/internal/Table;
    .locals 4

    .prologue
    .line 72
    const-string v0, "class_ExcludedAd"

    invoke-virtual {p0, v0}, Lio/realm/internal/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    const-string v0, "class_ExcludedAd"

    invoke-virtual {p0, v0}, Lio/realm/internal/e;->c(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v0

    .line 74
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v2, "packageName"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 75
    const-string v1, "packageName"

    invoke-virtual {v0, v1}, Lio/realm/internal/Table;->a(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lio/realm/internal/Table;->m(J)V

    .line 76
    const-string v1, "packageName"

    invoke-virtual {v0, v1}, Lio/realm/internal/Table;->b(Ljava/lang/String;)V

    .line 79
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "class_ExcludedAd"

    invoke-virtual {p0, v0}, Lio/realm/internal/e;->c(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v0

    goto :goto_0
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    const-string v0, "class_ExcludedAd"

    return-object v0
.end method

.method public static a(Lio/realm/u;Ljava/util/Iterator;Ljava/util/Map;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/u;",
            "Ljava/util/Iterator",
            "<+",
            "Lio/realm/ac;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lio/realm/ac;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-wide/16 v8, -0x1

    .line 311
    const-class v0, Lcm/aptoide/pt/database/realm/ExcludedAd;

    invoke-virtual {p0, v0}, Lio/realm/u;->d(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v3

    .line 312
    invoke-virtual {v3}, Lio/realm/internal/Table;->a()J

    move-result-wide v0

    .line 313
    iget-object v2, p0, Lio/realm/u;->f:Lio/realm/ah;

    const-class v4, Lcm/aptoide/pt/database/realm/ExcludedAd;

    invoke-virtual {v2, v4}, Lio/realm/ah;->a(Ljava/lang/Class;)Lio/realm/internal/b;

    move-result-object v2

    check-cast v2, Lio/realm/g$a;

    .line 314
    invoke-virtual {v3}, Lio/realm/internal/Table;->f()J

    move-result-wide v2

    .line 316
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 317
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Lcm/aptoide/pt/database/realm/ExcludedAd;

    .line 318
    invoke-interface {p2, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 319
    instance-of v4, v7, Lio/realm/internal/j;

    if-eqz v4, :cond_1

    move-object v4, v7

    check-cast v4, Lio/realm/internal/j;

    invoke-interface {v4}, Lio/realm/internal/j;->b()Lio/realm/t;

    move-result-object v4

    invoke-virtual {v4}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v4

    if-eqz v4, :cond_1

    move-object v4, v7

    check-cast v4, Lio/realm/internal/j;

    invoke-interface {v4}, Lio/realm/internal/j;->b()Lio/realm/t;

    move-result-object v4

    invoke-virtual {v4}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v4

    invoke-virtual {v4}, Lio/realm/a;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lio/realm/u;->h()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v7

    .line 320
    check-cast v4, Lio/realm/internal/j;

    invoke-interface {v4}, Lio/realm/internal/j;->b()Lio/realm/t;

    move-result-object v4

    invoke-virtual {v4}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v4

    invoke-interface {v4}, Lio/realm/internal/l;->c()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p2, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    move-object v4, v7

    .line 324
    check-cast v4, Lio/realm/h;

    invoke-interface {v4}, Lio/realm/h;->realmGet$packageName()Ljava/lang/String;

    move-result-object v6

    .line 325
    if-eqz v6, :cond_4

    move-object v4, v6

    .line 326
    check-cast v4, Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lio/realm/internal/Table;->nativeFindFirstString(JJLjava/lang/String;)J

    move-result-wide v4

    .line 328
    :goto_1
    cmp-long v10, v4, v8

    if-nez v10, :cond_2

    .line 329
    const-wide/16 v4, 0x1

    invoke-static {v0, v1, v4, v5}, Lio/realm/internal/Table;->nativeAddEmptyRow(JJ)J

    move-result-wide v4

    .line 330
    if-eqz v6, :cond_2

    .line 331
    check-cast v6, Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    .line 334
    :cond_2
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p2, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 337
    :cond_3
    return-void

    :cond_4
    move-wide v4, v8

    goto :goto_1
.end method

.method public static b(Lio/realm/u;Lcm/aptoide/pt/database/realm/ExcludedAd;ZLjava/util/Map;)Lcm/aptoide/pt/database/realm/ExcludedAd;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/u;",
            "Lcm/aptoide/pt/database/realm/ExcludedAd;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Lio/realm/ac;",
            "Lio/realm/internal/j;",
            ">;)",
            "Lcm/aptoide/pt/database/realm/ExcludedAd;"
        }
    .end annotation

    .prologue
    .line 220
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/j;

    .line 221
    if-eqz v0, :cond_0

    .line 222
    check-cast v0, Lcm/aptoide/pt/database/realm/ExcludedAd;

    .line 227
    :goto_0
    return-object v0

    .line 224
    :cond_0
    const-class v1, Lcm/aptoide/pt/database/realm/ExcludedAd;

    move-object v0, p1

    check-cast v0, Lio/realm/h;

    invoke-interface {v0}, Lio/realm/h;->realmGet$packageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lio/realm/u;->a(Ljava/lang/Class;Ljava/lang/Object;)Lio/realm/ac;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/realm/ExcludedAd;

    move-object v1, v0

    .line 225
    check-cast v1, Lio/realm/internal/j;

    invoke-interface {p3, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 226
    check-cast v1, Lio/realm/h;

    check-cast p1, Lio/realm/h;

    invoke-interface {p1}, Lio/realm/h;->realmGet$packageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/h;->realmSet$packageName(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static b(Lio/realm/internal/e;)Lio/realm/g$a;
    .locals 8

    .prologue
    const-wide/16 v6, 0x1

    .line 83
    const-string v0, "class_ExcludedAd"

    invoke-virtual {p0, v0}, Lio/realm/internal/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 84
    const-string v0, "class_ExcludedAd"

    invoke-virtual {p0, v0}, Lio/realm/internal/e;->c(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v2

    .line 85
    invoke-virtual {v2}, Lio/realm/internal/Table;->d()J

    move-result-wide v0

    cmp-long v0, v0, v6

    if-eqz v0, :cond_0

    .line 86
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Field count does not match - expected 1 but was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lio/realm/internal/Table;->d()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 89
    const-wide/16 v0, 0x0

    :goto_0
    cmp-long v4, v0, v6

    if-gez v4, :cond_1

    .line 90
    invoke-virtual {v2, v0, v1}, Lio/realm/internal/Table;->e(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v1}, Lio/realm/internal/Table;->f(J)Lio/realm/RealmFieldType;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    add-long/2addr v0, v6

    goto :goto_0

    .line 93
    :cond_1
    new-instance v0, Lio/realm/g$a;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lio/realm/g$a;-><init>(Ljava/lang/String;Lio/realm/internal/Table;)V

    .line 95
    const-string v1, "packageName"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 96
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'packageName\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_2
    const-string v1, "packageName"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v3, :cond_3

    .line 99
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'String\' for field \'packageName\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_3
    iget-wide v4, v0, Lio/realm/g$a;->a:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->b(J)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-wide v4, v0, Lio/realm/g$a;->a:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->q(J)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-eqz v1, :cond_4

    .line 102
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot migrate an object with null value in field \'packageName\'. Either maintain the same type for primary key field \'packageName\', or remove the object with null value before migration."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_4
    invoke-virtual {v2}, Lio/realm/internal/Table;->f()J

    move-result-wide v4

    const-string v1, "packageName"

    invoke-virtual {v2, v1}, Lio/realm/internal/Table;->a(Ljava/lang/String;)J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-eqz v1, :cond_5

    .line 105
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Primary key not defined for field \'packageName\' in existing Realm file. Add @PrimaryKey."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_5
    const-string v1, "packageName"

    invoke-virtual {v2, v1}, Lio/realm/internal/Table;->a(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->o(J)Z

    move-result v1

    if-nez v1, :cond_7

    .line 108
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Index not defined for field \'packageName\' in existing Realm file. Either set @Index or migrate using io.realm.internal.Table.removeSearchIndex()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_6
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "The \'ExcludedAd\' class is missing from the schema for this Realm."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_7
    return-object v0
.end method


# virtual methods
.method public b()Lio/realm/t;
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lio/realm/g;->b:Lio/realm/t;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 398
    if-ne p0, p1, :cond_1

    .line 412
    :cond_0
    :goto_0
    return v0

    .line 399
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    .line 400
    :cond_3
    check-cast p1, Lio/realm/g;

    .line 402
    iget-object v2, p0, Lio/realm/g;->b:Lio/realm/t;

    invoke-virtual {v2}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/a;->h()Ljava/lang/String;

    move-result-object v2

    .line 403
    iget-object v3, p1, Lio/realm/g;->b:Lio/realm/t;

    invoke-virtual {v3}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/a;->h()Ljava/lang/String;

    move-result-object v3

    .line 404
    if-eqz v2, :cond_5

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    if-nez v3, :cond_4

    .line 406
    :cond_6
    iget-object v2, p0, Lio/realm/g;->b:Lio/realm/t;

    invoke-virtual {v2}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/l;->b()Lio/realm/internal/Table;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/internal/Table;->l()Ljava/lang/String;

    move-result-object v2

    .line 407
    iget-object v3, p1, Lio/realm/g;->b:Lio/realm/t;

    invoke-virtual {v3}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/l;->b()Lio/realm/internal/Table;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/internal/Table;->l()Ljava/lang/String;

    move-result-object v3

    .line 408
    if-eqz v2, :cond_8

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    :cond_7
    move v0, v1

    goto :goto_0

    :cond_8
    if-nez v3, :cond_7

    .line 410
    :cond_9
    iget-object v2, p0, Lio/realm/g;->b:Lio/realm/t;

    invoke-virtual {v2}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/l;->c()J

    move-result-wide v2

    iget-object v4, p1, Lio/realm/g;->b:Lio/realm/t;

    invoke-virtual {v4}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v4

    invoke-interface {v4}, Lio/realm/internal/l;->c()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 385
    iget-object v1, p0, Lio/realm/g;->b:Lio/realm/t;

    invoke-virtual {v1}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/a;->h()Ljava/lang/String;

    move-result-object v1

    .line 386
    iget-object v2, p0, Lio/realm/g;->b:Lio/realm/t;

    invoke-virtual {v2}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/l;->b()Lio/realm/internal/Table;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/internal/Table;->l()Ljava/lang/String;

    move-result-object v2

    .line 387
    iget-object v3, p0, Lio/realm/g;->b:Lio/realm/t;

    invoke-virtual {v3}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/l;->c()J

    move-result-wide v4

    .line 390
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/lit16 v1, v1, 0x20f

    .line 391
    mul-int/lit8 v1, v1, 0x1f

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    :cond_0
    add-int/2addr v0, v1

    .line 392
    mul-int/lit8 v0, v0, 0x1f

    const/16 v1, 0x20

    ushr-long v2, v4, v1

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    .line 393
    return v0

    :cond_1
    move v1, v0

    .line 390
    goto :goto_0
.end method

.method public realmGet$packageName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 59
    iget-object v0, p0, Lio/realm/g;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 60
    iget-object v0, p0, Lio/realm/g;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/g;->a:Lio/realm/g$a;

    iget-wide v2, v1, Lio/realm/g$a;->a:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->k(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmSet$packageName(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 64
    iget-object v0, p0, Lio/realm/g;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 65
    if-nez p1, :cond_0

    .line 66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to set non-nullable field \'packageName\' to null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_0
    iget-object v0, p0, Lio/realm/g;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/g;->a:Lio/realm/g$a;

    iget-wide v2, v1, Lio/realm/g$a;->a:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/l;->a(JLjava/lang/String;)V

    .line 69
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 367
    invoke-static {p0}, Lio/realm/ad;->isValid(Lio/realm/ac;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 368
    const-string v0, "Invalid object"

    .line 375
    :goto_0
    return-object v0

    .line 370
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ExcludedAd = ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 371
    const-string v1, "{packageName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    invoke-virtual {p0}, Lio/realm/g;->realmGet$packageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
