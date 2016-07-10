package com.maogh.blog.account.model;

// Generated 2013-1-29 22:26:37 by Hibernate Tools 3.4.0.CR1

import java.util.HashSet;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

import com.maogh.app.model.GenericEntity;

/**
 * BlogRole generated by hbm2java
 */
@Entity
@Table(name="blog_role")
public class Role extends GenericEntity {
	private String name;
	private String title;
	private String comment;
	@ManyToMany(mappedBy="roles")
	private Set<User> users = new HashSet<User>();

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getComment() {
		return this.comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	public Set<User> getUsers() {
		return users;
	}

	public void setUsers(Set<User> users) {
		this.users = users;
	}
}
