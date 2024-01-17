require 'rails_helper'

describe AutoUrlHelper, type: :helper do
  describe "index" do
    describe "#index_path_for(record)" do
      let(:user) { User.new id: 1 }

      it "get /users" do
        expect(helper.index_path_for(user)).to eq(users_path)
      end

      context "with additional params" do
        it "get /users?key=value" do
          expect(helper.index_path_for(user, key: "value")).to eq(users_path(key: "value"))
        end
      end

      context "with anchor" do
        it "get /users#title1" do
          expect(helper.index_path_for(user, anchor: "title1")).to eq(users_path(anchor: "title1"))
        end
      end

      context "with prefix" do
        it "get /admin/users#title1" do
          expect(helper.index_path_for(user, prefix: "admin")).to eq(admin_users_path)
        end
      end

      context "when record is a model class" do
        it "get /users" do
          expect(helper.index_path_for(User)).to eq(users_path)
        end
      end
    end

    describe "#index_url_for(record)" do
      let(:user) { User.new id: 1 }

      it "get /users" do
        expect(helper.index_url_for(user)).to eq(users_url)
      end

      context "with additional params" do
        it "get /users?key=value" do
          expect(helper.index_url_for(user, key: "value")).to eq(users_url(key: "value"))
        end
      end

      context "with anchor" do
        it "get /users#title1" do
          expect(helper.index_url_for(user, anchor: "title1")).to eq(users_url(anchor: "title1"))
        end
      end

      context "with prefix" do
        it "get /admin/users#title1" do
          expect(helper.index_url_for(user, prefix: "admin")).to eq(admin_users_url)
        end
      end

      context "when record is a model class" do
        it "get /users" do
          expect(helper.index_url_for(User)).to eq(users_url)
        end
      end
    end
  end

  describe "show" do
    describe "#show_path_for(record)" do
      let(:user) { User.new id: 1 }

      it "get /users" do
        expect(helper.show_path_for(user)).to eq(user_path(user))
      end

      context "with additional params" do
        it "get /users?key=value" do
          expect(helper.show_path_for(user, key: "value")).to eq(user_path(user, key: "value"))
        end
      end

      context "with anchor" do
        it "get /users#title1" do
          expect(helper.show_path_for(user, anchor: "title1")).to eq(user_path(user, anchor: "title1"))
        end
      end

      context "with prefix" do
        it "get /admin/users#title1" do
          expect(helper.show_path_for(user, prefix: "admin")).to eq(admin_user_path(user))
        end
      end
    end

    describe "#show_url_for(record)" do
      let(:user) { User.new id: 1 }

      it "get /users" do
        expect(helper.show_url_for(user)).to eq(user_url(user))
      end

      context "with additional params" do
        it "get /users?key=value" do
          expect(helper.show_url_for(user, key: "value")).to eq(user_url(user, key: "value"))
        end
      end

      context "with anchor" do
        it "get /users#title1" do
          expect(helper.show_url_for(user, anchor: "title1")).to eq(user_url(user, anchor: "title1"))
        end
      end

      context "with prefix" do
        it "get /admin/users#title1" do
          expect(helper.show_url_for(user, prefix: "admin")).to eq(admin_user_url(user))
        end
      end
    end
  end

  describe "new" do
    describe "#new_path_for(record)" do
      let(:user) { User.new id: 1 }

      it "get /users/1/new" do
        expect(helper.new_path_for(user)).to eq(new_user_path)
      end

      context "with additional params" do
        it "get /users/1/new?key=value" do
          expect(helper.new_path_for(user, key: "value")).to eq(new_user_path(key: "value"))
        end
      end

      context "with anchor" do
        it "get /users/1/new#title1" do
          expect(helper.new_path_for(user, anchor: "title1")).to eq(new_user_path(anchor: "title1"))
        end
      end

      context "with prefix" do
        it "get /admin/users/1/new#title1" do
          expect(helper.new_path_for(user, prefix: "admin")).to eq(new_admin_user_path)
        end
      end

      context "when record is a model class" do
        it "get /users/1/new" do
          expect(helper.new_path_for(User)).to eq(new_user_path)
        end
      end
    end

    describe "#new_url_for(record)" do
      let(:user) { User.new id: 1 }

      it "get /users/1/new" do
        expect(helper.new_url_for(user)).to eq(new_user_url)
      end

      context "with additional params" do
        it "get /users/1/new?key=value" do
          expect(helper.new_url_for(user, key: "value")).to eq(new_user_url(key: "value"))
        end
      end

      context "with anchor" do
        it "get /users/1/new#title1" do
          expect(helper.new_url_for(user, anchor: "title1")).to eq(new_user_url(anchor: "title1"))
        end
      end

      context "with prefix" do
        it "get /admin/users/1/new#title1" do
          expect(helper.new_url_for(user, prefix: "admin")).to eq(new_admin_user_url)
        end
      end

      context "when record is a model class" do
        it "get /users/1/new" do
          expect(helper.new_url_for(User)).to eq(new_user_url)
        end
      end
    end
  end

  describe "edit" do
    describe "#edit_path_for(record)" do
      let(:user) { User.new id: 1 }

      it "get /users/1/edit" do
        expect(helper.edit_path_for(user)).to eq(edit_user_path(user))
      end

      context "with additional params" do
        it "get /users/1/edit?key=value" do
          expect(helper.edit_path_for(user, key: "value")).to eq(edit_user_path(user, key: "value"))
        end
      end

      context "with anchor" do
        it "get /users/1/edit#title1" do
          expect(helper.edit_path_for(user, anchor: "title1")).to eq(edit_user_path(user, anchor: "title1"))
        end
      end

      context "with prefix" do
        it "get /admin/users/1/edit#title1" do
          expect(helper.edit_path_for(user, prefix: "admin")).to eq(edit_admin_user_path(user))
        end
      end
    end

    describe "#edit_url_for(record)" do
      let(:user) { User.new id: 1 }

      it "get /users/1/edit" do
        expect(helper.edit_url_for(user)).to eq(edit_user_url(user))
      end

      context "with additional params" do
        it "get /users/1/edit?key=value" do
          expect(helper.edit_url_for(user, key: "value")).to eq(edit_user_url(user, key: "value"))
        end
      end

      context "with anchor" do
        it "get /users/1/edit#title1" do
          expect(helper.edit_url_for(user, anchor: "title1")).to eq(edit_user_url(user, anchor: "title1"))
        end
      end

      context "with prefix" do
        it "get /admin/users/1/edit#title1" do
          expect(helper.edit_url_for(user, prefix: "admin")).to eq(edit_admin_user_url(user))
        end
      end
    end
  end
end
